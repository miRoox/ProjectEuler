#!/usr/bin/env wolframscript
(* ::Package:: *)

lim=28123;
allInRange=Range[lim];
abundantNumberQ[n_Integer]:=abundantNumberQ[n]=DivisorSigma[1, n]>2n
abundants=Select[allInRange,abundantNumberQ];


notSumOfTwoAbundantsQ[n_Integer]:=Do[Which[
m>=n,Return[True],
abundantNumberQ[n-m],Return[False]
],{m,abundants}]


isResult=ParallelMap[notSumOfTwoAbundantsQ,allInRange];
Total[Pick[allInRange,isResult]]//Print
