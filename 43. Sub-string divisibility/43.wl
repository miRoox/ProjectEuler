#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE43

Begin["`PE43`"]

With[{divs=Array[Prime,7]},
  subDivQ[n_List]:=Inner[Divisible,FromDigits/@Partition[n,3,1][[2;;]],divs,And]
]

PE43[]:=FromDigits/@Select[Permutations@Range[0,9],subDivQ]//Total

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE43[]//Print
]
