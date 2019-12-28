#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE40

Begin["`PE40`"]

PE40[nmax_Integer:1000000]:=Block[{upto,d},
  upto=Ceiling[nmax/(Log10[nmax]-1)];
  d=StringJoin[ToString/@Range[upto]]~StringPart~PowerRange[nmax];
  Times@@FromDigits/@d
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE40[]//Print
]
