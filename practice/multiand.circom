pragma circom 2.1.6;


include "../node_modules/circomlib/circuits/gates.circom";

template MultiAND(n) {
    signal input in[n];
    signal output out;

    component and[n-1];

    for (var i = 0; i < n-1; i++) {
        and[i] = AND();
    }

    and[0].a <== in[0];
    and[0].b <== in[1];

    for (var i = 1; i < n-1; i++) {
        and[i].a <== and[i-1].out;
        and[i].b <== in[i+1];
    }

    out <== and[n-2].out;
}


component main = MultiAND();
