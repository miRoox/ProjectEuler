#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Once[
Unevaluated[
  PE12[n_Integer]:=Module[{i=1},
    While[DivisorSigma[0,f[i]]<=n,++i];
    f[i]
  ]
]/.f[n_]->Sum[i,{i,n}]
]


PE12[500]
