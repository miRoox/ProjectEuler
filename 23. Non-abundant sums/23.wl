#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Clear[PE23`abundantNumberQ]
PE23`abundantNumberQ[n_Integer]:=PE23`abundantNumberQ[n]=DivisorSigma[1, n]>2n

PE23`notSumOfTwoAbundantsQ[n_Integer]:=Do[
    Which[
      m>=n,Return[True],
      PE23`abundantNumberQ[n-m],Return[False]
    ],
    {m,PE23`abundants}
  ];

PE23[]:=Block[
  {lim=28123,allInRange,PE23`abundants,isResult},
  allInRange=Range[lim];
  PE23`abundants=Select[allInRange,PE23`abundantNumberQ];
  isResult=ParallelMap[PE23`notSumOfTwoAbundantsQ,allInRange];
  Total[Pick[allInRange,isResult]]
]

PE23[]
