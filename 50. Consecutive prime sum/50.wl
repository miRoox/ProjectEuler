#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE50

Begin["`PE50`"]

PE50[lim_Integer:1*^6]:=Module[{len=0,sum=0},
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

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE50[]//Print
]
