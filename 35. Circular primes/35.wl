#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE35

Begin["`PE35`"]

rotateInt[n_Integer,k_Integer]:=FromDigits@RotateLeft[IntegerDigits[n],k]
circularPrimeQ[n_]:=And@@Table[PrimeQ@rotateInt[n,k],{k,IntegerLength[n]}]

PE35[n_Integer:1*^6]:=Parallelize[Select[Range[2,n],circularPrimeQ],DistributedContexts->Automatic]//Length

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE35[]//Print
]
