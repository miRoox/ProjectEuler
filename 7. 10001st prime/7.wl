#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE7[]:=Prime[10001]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE7[]//Print
]
