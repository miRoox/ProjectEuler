#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE47

Begin["`PE47`"]

PE47[]:=Block[{i=2},
  While[AnyTrue[Range[i,i+3],PrimeNu[#]!=4&],++i];
  i
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE47[]//Print
]
