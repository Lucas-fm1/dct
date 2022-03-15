// --------------------------------------------------
//   FUNCTION: arithmetic left padding
//   PORPOUSE: treatment in inverse transform
// --------------------------------------------------

module treatment_inv
(
  input  logic signed [12:0] IN[4],
  output logic signed [12:0] IN_tr[4]
);
  
  assign IN_tr[0] = (IN[0]>=0)?(IN[0]):(IN[0] + 13'b11100_0000_0000);
  assign IN_tr[2] = (IN[2]>=0)?(IN[2]):(IN[2] + 13'b11100_0000_0000);
  assign IN_tr[1] = (IN[1]>=0)?(IN[1]):(IN[1] + 13'b11100_0000_0000);
  assign IN_tr[3] = (IN[3]>=0)?(IN[3]):(IN[3] + 13'b11100_0000_0000);
  
endmodule