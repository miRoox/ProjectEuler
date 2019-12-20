#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE49[]:=Block[{e},
  e=Prime@Range[PrimePi[999]+1,PrimePi[9999]]//GatherBy[#,Sort@*IntegerDigits]&//Map[Subsets[#,{3}]&]//Apply[Join]//Select[Equal@@Differences[#]&];
  ToString/@Flatten@Complement[e,{{1487,4817,8147}}]//StringJoin//FromDigits
]


PE49[]
