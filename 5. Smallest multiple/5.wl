#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE5

Begin["`PE5`"]

impl=Apply[LCM]@*Range

PE5[]:=impl[20]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE5[]//Print
]
