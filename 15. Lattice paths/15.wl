#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE15

Begin["`PE15`"]

PE15[n_Integer:20]:=Binomial[2n,n]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE15[]//Print
]
