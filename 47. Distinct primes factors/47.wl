#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE47[]:=Block[{i=2},
  While[AnyTrue[Range[i,i+3],PrimeNu[#]!=4&],++i];
  i
]


PE47[]
