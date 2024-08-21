module comparator_tb;

  // Inputs
  logic [19:0] a;
  logic [19:0] b;

  // Outputs
  logic eq;
  logic lt;
  logic gt;

  comparator dut (
    .a(a),
    .b(b),
    .eq(eq),
    .lt(lt),
    .gt(gt)
  );

  initial begin
    // Apply various test cases to verify the comparator
    
    // Test case 1: Equal values
    a <= 20'hAAAA;
    b <= 20'hAAAA;
    #10;  

   
    $display("Test Case 1: Equal Values");
    $display("a = %h, b = %h", a, b);
    $display("eq = %b, lt = %b, gt = %b", eq, lt, gt);

    // Test case 2: a greater than b
    a <= 20'hFFFF;
    b <= 20'hAAAA;
    #10;

    // Display results
    $display("Test Case 2: a greater than b");
    $display("a = %h, b = %h", a, b);
    $display("eq = %b, lt = %b, gt = %b", eq, lt, gt);

    // Test case 3: a less than b
    a <= 20'h0000;
    b <= 20'hFFFF;
    #10;

    // Display results
    $display("Test Case 3: a less than b");
    $display("a = %h, b = %h", a, b);
    $display("eq = %b, lt = %b, gt = %b", eq, lt, gt);

    #10;
    $finish;
  end

endmodule
