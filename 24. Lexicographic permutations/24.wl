#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE24

Begin["`PE24`"]

(*result of Permutations is under lexicographic order*)
PE24[]:=Permutations[Range[0,9]][[1*^6]]//FromDigits

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE24[]//Print
]
