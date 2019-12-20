#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE50[lim_Integer]:=Module[{len=0,sum=0},
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


PE50[1*^6]
