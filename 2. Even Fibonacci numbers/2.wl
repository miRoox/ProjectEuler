#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE2

Begin["`PE2`"]

Once@With[{sol=First@RSolve[{f[n]==f[n-1]+f[n-2],f[1]==1,f[2]==2},f[n],n]/.f[n]->f[n_]},
  Unevaluated[
    PE2[m_Integer:4*^6]:=Block[{i=1},
      While[f[i]<m,++i];
      Table[f[n],{n,i-1}]//Select[EvenQ]//Total
    ]
  ]/.sol
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE2[]//Print
]
