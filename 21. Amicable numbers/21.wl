#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE21

Begin["`PE21`"]

d[n_Integer]:=d[n]=DivisorSum[n,Identity,#<n&]

PE21[n_Integer:10000]:=Total@Select[#==d@d[#]!=d[#]&]@Range[2,n]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE21[]//Print
]
