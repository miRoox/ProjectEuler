#!/usr/bin/env wolframscript
(* ::Package:: *)

pandigitals[n_]:=FromDigits/@Permutations@Reverse@Range[n]


findPandigitalPrime[n_:9]:=With[
  {result=SelectFirst[pandigitals[n],PrimeQ,None]},
  If[result===None,findPandigitalPrime[n-1],result]
 ]


findPandigitalPrime[]//Print
