#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE29

Begin["`PE29`"]

PE29[l_Integer:2,h_Integer:100]:=Outer[Power,Range[l,h],Range[l,h]]//Flatten//DeleteDuplicates//Length

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE29[]//Print
]
