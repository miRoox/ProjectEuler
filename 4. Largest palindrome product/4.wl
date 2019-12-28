#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE4

Begin["`PE4`"]

PE4[n_Integer:3]:=With[{start=10^(n-1),end=10^n-1},
  Table[i*j,{i,end,start,-1},{j,i,start,-1}]//Flatten//Sort//Reverse
    //Scan[If[PalindromeQ[#],Throw[#]]&]//Catch
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE4[]//Print
]
