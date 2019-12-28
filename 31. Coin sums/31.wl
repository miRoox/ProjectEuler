#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE31

Begin["`PE31`"]

(*just solve it!*)
PE31[n_Integer:200]:=FrobeniusSolve[{1,2,5,10,20,50,100,200},n]//Length

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE31[]//Print
]
