#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE10

Begin["`PE10`"]

PE10[n_Integer:2*^6]:=Sum[Prime[i],{i,PrimePi[n]}]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE10[]//Print
]
