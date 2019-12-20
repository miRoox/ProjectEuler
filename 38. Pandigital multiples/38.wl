#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Once@With[{pandigits=ConstantArray[1,9]~Append~0},
  PE38`pandigitalQ[n_]:=DigitCount[n]==pandigits
]


PE38[]:=Parallelize@Select[
  Flatten@Table[
    FromDigits@Flatten@Table[IntegerDigits[i*k],{k,1,n}],
  {n,2,9},{i,1,10^Quotient[9,n]-1}],
  PE38`pandigitalQ]//Max


PE38[]
