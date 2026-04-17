pragma circom 2.1.8;
include "circomlib/comparators.circom";
include "circomlib/gates.circom";

template Range() {
    signal input a;
    signal output out;

    component gt = GreaterThan(252);
    component lt = LessThan(252);
    component and = AND();

    // a > 10
    gt.in[0] <== a;
    gt.in[1] <== 10;

    // a < 30
    lt.in[0] <== a;
    lt.in[1] <== 30;

    and.a <== gt.out;
    and.b <== lt.out;

    out <== and.out;
}