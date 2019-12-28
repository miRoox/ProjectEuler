#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE26

Begin["`PE26`"]

PE26[n_Integer:1000]:=MapIndexed[{Length@Last@First@RealDigits[#1],First[#2]}&][1/Range[n]]//MaximalBy[First]//Last//Last

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE26[]//Print
]
