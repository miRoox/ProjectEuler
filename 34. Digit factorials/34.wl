#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE34

Begin["`PE34`"]

PE34[]:=With[
  {maxDigit=NestWhile[#+1&,2,IntegerLength@Total[IntegerDigits[10^#-1]!]>#&]},
  Parallelize[Select[Range[10,10^maxDigit-1],Total[IntegerDigits[#]!]==#&]]//Total
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE34[]//Print
]
