#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE28

Begin["`PE28`"]

(*Find the rule of the series*)
rule1=FindSequenceFunction[{1,3,13,31},n];
rule2=FindSequenceFunction[{1,9,25,49},n];

(*Each circle on the spiral is an arithmetic progression, except for the first circle*)
sum[n_Integer]=Sum[2(rule1+rule2),{n,n}]-4+1//Expand

PE28[n_Integer:1001]=sum[Quotient[n,2]+1]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE28[]//Print
]
