#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE6

Begin["`PE6`"]

PE6[n_Integer:100]=Once[Sum[i,{i,n}]^2-Sum[i^2,{i,n}] //Simplify]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE6[100]//Print
]
