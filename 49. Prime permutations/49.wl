#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE49

Begin["`PE49`"]

PE49[]:=Block[{e},
  e=Prime@Range[PrimePi[999]+1,PrimePi[9999]]//GatherBy[#,Sort@*IntegerDigits]&//Map[Subsets[#,{3}]&]//Apply[Join]//Select[Equal@@Differences[#]&];
  ToString/@Flatten@Complement[e,{{1487,4817,8147}}]//StringJoin//FromDigits
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE49[]//Print
]
