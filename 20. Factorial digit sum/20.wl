#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE20

Begin["`PE20`"]

impl=IntegerDigits/*Total

PE20[]:=impl[100!]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE20[]//Print
]
