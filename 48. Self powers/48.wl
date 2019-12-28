#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE48

Begin["`PE48`"]

PE48[]:=IntegerDigits[Sum[i^i,{i,1000}]][[-10;;]]//FromDigits

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE48[]//Print
]
