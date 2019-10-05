#!/usr/bin/env wolframscript
(* ::Package:: *)

With[{lim=1*^6},
 Module[{len=0,sum=0},
  Do[
   Block[{j=i,s=0},
    While[(s+=Prime[j++])<lim,
     If[PrimeQ[s]&&j-i>len,
      len=j-i;
      sum=s;
     ]
    ]
   ],
   {i,PrimePi[lim]}
  ];
  sum
 ]
]//Print
