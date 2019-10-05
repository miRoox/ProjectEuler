#!/usr/bin/env wolframscript
(* ::Package:: *)

f[n_]=Sum[i,{i,n}]


Module[{i=1},
 While[DivisorSigma[0,f[i]]<=500,++i];
 f[i]//Print
]
