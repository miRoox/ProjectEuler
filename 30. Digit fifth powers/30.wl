#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE30

Begin["`PE30`"]

PE30[n_Integer:5]:=Block[{
  maxDigit=NestWhile[#+1&,2,IntegerLength@Total[IntegerDigits[10^#-1]^n]>#&]},
  Range[2,10^maxDigit-1]//Select[Total[IntegerDigits[#]^n]==#&]//Total
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE30[]//Print
]
