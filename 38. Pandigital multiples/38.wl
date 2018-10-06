(* ::Package:: *)

pandigits=ConstantArray[1,9]~Append~0;
pandigitalQ[n_]:=DigitCount[n]==pandigits


Parallelize@Select[
 Flatten@Table[
  FromDigits@Flatten@Table[IntegerDigits[i*k],{k,1,n}],
 {n,2,9},{i,1,10^Quotient[9,n]-1}],
pandigitalQ]//Max
