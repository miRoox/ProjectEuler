#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE46`goldbachQ[n_]:=Module[{i=1,p=2},
  While[p<n&&!IntegerQ@Sqrt[(n-p)/2],p=Prime[++i];];
  p<n
]


PE46[]:=Block[{n=9},
  While[PrimeQ[n]||PE46`goldbachQ[n],n+=2];
  n
]


PE46[]
