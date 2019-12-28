#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE25

Begin["`PE25`"]

PE25[n_Integer:1000]:=NestWhile[#+1&,1,IntegerLength@Fibonacci[#]<n&]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE25[]//Print
]
