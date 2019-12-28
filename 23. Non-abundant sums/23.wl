#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE23

Begin["`PE23`"]

abundantNumberQ[n_Integer]:=abundantNumberQ[n]=DivisorSigma[1, n]>2n

notSumOfTwoAbundantsQ[abundants_][n_Integer]:=Do[
    Which[
      m>=n,Return[True],
      abundantNumberQ[n-m],Return[False]
    ],
    {m,abundants}
  ];

PE23[lim_Integer:28123]:=Block[
  {allInRange,abundants,isResult},
  allInRange=Range[lim];
  abundants=Select[allInRange,abundantNumberQ];
  isResult=ParallelMap[notSumOfTwoAbundantsQ[abundants],allInRange];
  Total[Pick[allInRange,isResult]]
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE23[]//Print
]
