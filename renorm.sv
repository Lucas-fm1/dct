// --------------------------------------------------
//   FUNCTION: evalute 4x or 4x + x
//   PORPOUSE: renormalization 
// --------------------------------------------------

module renorm(
  input  logic signed [9:0]  in[4],
  output logic signed [12:0] re[4]
);
  
  assign re[0] = (in[0]<<<2) + in[0];
  assign re[1] =  in[1]<<<2;
  assign re[2] = (in[2]<<<2) + in[2];
  assign re[3] =  in[3]<<<2;
  
endmodule