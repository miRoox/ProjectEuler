#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE40[nmax_Integer]:=Block[{upto,d},
  upto=Ceiling[nmax/(Log10[nmax]-1)];
  d=StringJoin[ToString/@Range[upto]]~StringPart~PowerRange[nmax];
  Times@@FromDigits/@d
]


PE40[1000000]
