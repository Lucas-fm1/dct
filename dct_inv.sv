//`include "renorm"
`include "treatment_inv"

module dct_inv
(
  input  logic signed [12:0] IN[4],
  output logic signed [12:0] out[4]
);

  logic signed [12:0] data_path[4][2];
  
  //treatment_inv(IN,IN_tr);
  //renorm(IN_tr,re);
  
  assign data_path[0][0] = IN[0] + IN[2];
  assign data_path[1][0] = IN[0] - IN[2];
  assign data_path[2][0] = (IN[1]>>>1) - IN[3];
  assign data_path[3][0] = (IN[3]>>>1) + IN[1];
  
  assign data_path[0][1] = data_path[0][0] + data_path[3][0];
  assign data_path[1][1] = data_path[1][0] + data_path[2][0];
  assign data_path[2][1] = data_path[1][0] - data_path[2][0];
  assign data_path[3][1] = data_path[0][0] - data_path[3][0];
  
  generate
    genvar aux;
    for(aux=0;aux<4;aux++)
      assign out[aux] = data_path[aux][1];
  endgenerate
  
endmodule