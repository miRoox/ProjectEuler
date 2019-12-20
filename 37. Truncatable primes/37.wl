#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE37`truncatablePrimeQ[n_]:=
  And@@Table[PrimeQ[Quotient[n,10^(i-1)]]&&PrimeQ[Mod[n,10^i]],{i,IntegerLength@n}]


PE37[n_Integer]=Block[{sum=0,count=0,p=n},
  While[count<n,
    p=NextPrime[p];
    If[PE37`truncatablePrimeQ[p],
      ++count;
      sum += p;
    ]
  ];
  sum
]


PE37[11]
