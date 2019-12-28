#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE3

Begin["`PE3`"]

PE3[n_Integer:600851475143]:=FactorInteger[n][[;;,1]]//Max

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE3[]//Print
]
