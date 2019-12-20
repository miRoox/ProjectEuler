#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE41`pandigitals[n_]:=FromDigits/@Permutations@Reverse@Range[n]


PE41[n_:9]:=With[
  {result=SelectFirst[PE41`pandigitals[n],PrimeQ,None]},
  If[result===None,PE41[n-1],result]
 ]


PE41[]
