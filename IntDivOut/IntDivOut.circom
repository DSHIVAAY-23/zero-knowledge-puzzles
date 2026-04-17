template DivOut() {
    signal input numerator;
    signal input denominator;
    signal output quotient;
    signal output remainder;

    numerator === denominator * quotient + remainder;

    component lt = LessThan(252);
    lt.in[0] <== remainder;
    lt.in[1] <== denominator;

    lt.out === 1;
}