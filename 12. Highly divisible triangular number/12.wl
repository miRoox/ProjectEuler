#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE12

Begin["`PE12`"]

Unevaluated[
  PE12[n_Integer:500]:=Module[{i=1},
    While[DivisorSigma[0,f[i]]<=n,++i];
    f[i]
  ]
]/.f[n_]->Sum[i,{i,n}]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE12[]//Print
]
