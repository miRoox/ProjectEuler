#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE41

Begin["`PE41`"]

pandigitals[n_]:=FromDigits/@Permutations@Reverse@Range[n]

PE41[n_:9]:=With[
  {result=SelectFirst[pandigitals[n],PrimeQ,None]},
  If[result===None,PE41[n-1],result]
 ]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE41[]//Print
]
