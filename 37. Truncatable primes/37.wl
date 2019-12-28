#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE37

Begin["`PE37`"]

truncatablePrimeQ[n_]:=
  And@@Table[PrimeQ[Quotient[n,10^(i-1)]]&&PrimeQ[Mod[n,10^i]],{i,IntegerLength@n}]

PE37[n_Integer:11]:=Block[{sum=0,count=0,p=n},
  While[count<n,
    p=NextPrime[p];
    If[truncatablePrimeQ[p],
      ++count;
      sum += p;
    ]
  ];
  sum
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE37[]//Print
]
