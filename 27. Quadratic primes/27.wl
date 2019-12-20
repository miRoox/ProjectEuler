#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE27[n_Integer]:=With[
   {data=ParallelTable[
    NestWhile[#+1&,0,PrimeQ[#^2+a #+b]&],
    {a,-(n-1),(n-1)},{b,-(n-1),(n-1)}]},
  Times@@First[Position[data,Max[data]]-n]
]

PE27[1000]
