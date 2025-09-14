/*
    Multiplex
*/

module multiplex4_1 (i0, i1, i2, i3, s1, s0, f);

    input logic  i0, i1, i2, i3, s1, s0;
    output logic f;


    always_comb begin
       f = i0&(~s1)&(~s0) | i1&(~s1)&s0 | i2&s1&(~s0) | i3&s1&s0;
    end


endmodule: multiplex4_1