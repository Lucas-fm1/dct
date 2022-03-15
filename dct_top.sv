`include "dct_inv"
`include "dct_dir"
`include "renorm"

module dct
(
  input  logic signed [7:0]  dt_i [4],
  output logic signed [9:0]  trf_dir [4],
  output logic signed [12:0] rn_wire [4],
  output logic signed [12:0] trf_inv [4]
);

// ======== direct transform ========
  dct_dir dir
  (
    .in   ( dt_i    ), 
    .OUT  ( trf_dir )
  );
// ========= renormalization ========
  renorm ren
  (
    .in  ( trf_dir ),
    .re  ( rn_wire )
  );
// ======== inverse transform =======
  dct_inv inv
  (
    .IN  ( rn_wire  ), 
    .out ( trf_inv  )
  );

endmodule