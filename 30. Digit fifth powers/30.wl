#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE30[n_Integer]:=Block[{
  maxDigit=NestWhile[#+1&,2,IntegerLength@Total[IntegerDigits[10^#-1]^n]>#&]},
  Range[2,10^maxDigit-1]//Select[Total[IntegerDigits[#]^n]==#&]//Total
]

PE30[5]
