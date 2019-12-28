#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE27

Begin["`PE27`"]

PE27[n_Integer:1000]:=With[
   {data=ParallelTable[
    NestWhile[#+1&,0,PrimeQ[#^2+a #+b]&],
    {a,-(n-1),(n-1)},{b,-(n-1),(n-1)}]},
  Times@@First[Position[data,Max[data]]-n]
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE27[]//Print
]
