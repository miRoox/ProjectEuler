#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE16

Begin["`PE16`"]

impl=IntegerDigits/*Total

PE16[]:=impl[2^1000]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE16[]//Print
]
