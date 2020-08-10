#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE40

Begin["`PE40`"]

PE40[nmax_Integer:1000000]:=Times@@With[
  {n = RealDigits[N[ChampernowneNumber[], nmax]]},
  n[[1, #]]& /@ PowerRange[nmax]
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE40[]//Print
]
