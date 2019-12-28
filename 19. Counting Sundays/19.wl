#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

(*use built-in date function*)
PE19[]:=Sunday/.CountsBy[DayRange[{1901,1,1},{2000,12,31},"BeginningOfMonth"],DateValue[#,"DayName"]&]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE19[]//Print
]
