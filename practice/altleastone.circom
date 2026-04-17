
include "circomlib/comparators.circom";

template AtLeastOne() {
   signal  input in[4];
   signal output out;

   for(var i =0;i<4;i++){
       in[0]*(in[i]-1)===0;
   }
   signal sum;
   sum= sum[0]+sum[1]+sum[2]+sum[3];

   component ge = GreaterEqThan(3);
   ge.1<==sum;
   ge.2<==1;

   out<==ge.out;
}

component main = AtLeastOne();