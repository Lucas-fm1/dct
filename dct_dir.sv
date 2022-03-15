// ---------------------------------------------------------
//  MODULE: Direct DCT Transform                           |
//  AUTHOR: Lucas Farias Martins                           |
//  PORPOUSE: A combinational implementation for the       |
//            transform                                    |
// --------------------------------------------------------- 

`include "treatment_dir"

module dct_dir
(
  input  logic signed [7:0] in[4],
  output logic signed [9:0] OUT[4]
);
  
  logic signed [9:0] in_tr[4];
  logic signed [9:0] data_path[4][2];
  
  treatment_dir(in,in_tr);
  
  assign data_path[0][0] = in_tr[0] + in_tr[3];
  assign data_path[1][0] = in_tr[1] + in_tr[2];
  assign data_path[2][0] = in_tr[1] - in_tr[2];
  assign data_path[3][0] = in_tr[0] - in_tr[3];
  
  assign data_path[0][1] = data_path[0][0] + data_path[1][0];
  assign data_path[1][1] = data_path[0][0] - data_path[1][0];
  assign data_path[2][1] = data_path[2][0] + (data_path[3][0]<<<1);
  assign data_path[3][1] = data_path[3][0] - (data_path[2][0]<<<1);
  
  assign OUT[0] = data_path[0][1];
  assign OUT[1] = data_path[2][1]; 
  assign OUT[2] = data_path[1][1]; 
  assign OUT[3] = data_path[3][1]; 

endmodule