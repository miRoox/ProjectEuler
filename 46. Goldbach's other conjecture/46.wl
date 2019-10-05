#!/usr/bin/env wolframscript
(* ::Package:: *)

goldbachQ[n_]:=Module[{i=1,p=2},
    While[p<n&&!IntegerQ@Sqrt[(n-p)/2],p=Prime[++i];];
    p<n
  ]


n=9;
While[PrimeQ[n]||goldbachQ[n],n+=2];
n//Print
