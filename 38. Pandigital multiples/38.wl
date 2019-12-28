#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE38

Begin["`PE38`"]

With[{pandigits=ConstantArray[1,9]~Append~0},
  pandigitalQ[n_]:=DigitCount[n]==pandigits
]

PE38[]:=Parallelize[
  Select[
    Flatten@Table[
      FromDigits@Flatten@Table[IntegerDigits[i*k],{k,1,n}],
    {n,2,9},{i,1,10^Quotient[9,n]-1}],
    pandigitalQ],
  DistributedContexts->Automatic]//Max

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE38[]//Print
]
