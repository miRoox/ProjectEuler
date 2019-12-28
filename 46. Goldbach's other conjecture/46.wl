#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE46

Begin["`PE46`"]

goldbachQ[n_]:=Module[{i=1,p=2},
  While[p<n&&!IntegerQ@Sqrt[(n-p)/2],p=Prime[++i];];
  p<n
]

PE46[]:=Block[{n=9},
  While[PrimeQ[n]||goldbachQ[n],n+=2];
  n
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE46[]//Print
]
