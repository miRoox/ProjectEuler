#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE1

Begin["`PE1`"]

PE1[n_Integer:1000]:=Union[Range[3,n-1,3],Range[5,n-1,5]]//Total

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE1[]//Print
]
