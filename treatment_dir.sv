// --------------------------------------------------
//   FUNCTION: arithmetic left padding
//   PORPOUSE: treatment in direct transform
// --------------------------------------------------

module treatament_dir
(
  input  logic signed [7:0] in[4],
  output logic signed [9:0] in_tr[4]
);
  
  assign in_tr[0] = (in[0]>=0)?({2'b00,in[0]}):({2'b11,in[0]});
  assign in_tr[1] = (in[1]>=0)?({2'b00,in[1]}):({2'b11,in[1]});
  assign in_tr[2] = (in[2]>=0)?({2'b00,in[2]}):({2'b11,in[2]});
  assign in_tr[3] = (in[3]>=0)?({2'b00,in[3]}):({2'b11,in[3]});
  
endmodule