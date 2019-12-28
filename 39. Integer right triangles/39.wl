#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE39

Begin["`PE39`"]

PE39[n_Integer:1000]:=Block[{results,maxVal},
  results=ParallelTable[Length@Solve[{a^2+b^2==c^2,0<a<b<c,a+b+c==p},{a,b,c},Integers],{p,n}];
  maxVal=Max@results;
  FirstPosition[results,maxVal]//First
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE39[]//Print
]
