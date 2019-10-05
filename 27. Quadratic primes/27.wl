#!/usr/bin/env wolframscript
(* ::Package:: *)

With[{data=ParallelTable[
   NestWhile[#+1&,0,PrimeQ[#^2+a #+b]&],
  {a,-999,999},{b,-999,999}]},
 Times@@First[Position[data,Max[data]]-1000]
]//Print
