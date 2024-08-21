module comparator(
    input logic [19:0] a,
    input logic [19:0] b,
    output logic eq,  // Equal output
    output logic lt,  // Less than output
    output logic gt   // Greater than output
);

    // Check for equality comparison
    assign eq = (a == b);

    // Check for less than comparison
    assign lt = (a < b);

    // Check for greater than comparison
    assign gt = (a > b);

endmodule
