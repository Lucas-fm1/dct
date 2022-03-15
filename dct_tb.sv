module test;

  logic signed [7:0] in [4];
  logic signed [9:0] trf_direta [4];
  logic signed [12:0] renormalizado [4];
  logic signed [12:0] trf_inversa [4];
  
  dct dct(in, trf_direta, renormalizado, trf_inversa);
  
  initial 
    begin
    $dumpfile("dump.vcd"); $dumpvars; 
    $display("\n");
  	$display(" _______________________________________________ ");
  	$display("|                                               |");
  	$display("|              BEM-VINDO AO TESTE               |");
  	$display("|_______________________________________________|");
      							input_assg;
     						    display;
    $display(" _______________________________________________ ");
  	$display("|                                               |");
    $display("|              	  FIM DO TESTE              	|");
  	$display("|_______________________________________________|"); 
    end
  
  	task input_assg;
      in[0] = -147;
      in[1] = -8;
      in[2] = 254;
      in[3] = -40;
    endtask : input_assg
  
    task display;
      $display("\n");
      for(int k=0;k<4;k++)
        #1 $display("\t\t> direta[%0d] = %0d", k, trf_direta[k]);
      $display("|================================================|");
      for(int k=0;k<4;k++)
        #1 $display("\t\t> renorm[%0d] = %0d", k, renormalizado[k]);
      $display("|================================================|");
      for(int n=0;n<4;n++)
        #1 $display("\t\t> inversa(x20)[%0d] = %0d", n, trf_inversa[n]/20);
      $display("\n");
    endtask
  
endmodule