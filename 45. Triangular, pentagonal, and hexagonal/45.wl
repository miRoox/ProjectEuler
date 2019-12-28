#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE45

Begin["`PE45`"]

PE45[ni:{t_,p_,h_}:{285,165,143},max_:40755]:=Block[{tmp},
  For[n=ni;tmp={1},Max[tmp]<=max,n*=2,
    tmp=Intersection[
      Table[k (k+1)/2, {k,n[[1]]+1,2n[[1]]}],
      Table[k (3k-1)/2,{k,n[[2]]+1,2n[[2]]}],
      Table[k(2k-1),  {k,n[[3]]+1,2n[[3]]}]
    ]
  ];
  First@tmp
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE45[]//Print
]
