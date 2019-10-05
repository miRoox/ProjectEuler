#!/usr/bin/env wolframscript
(* ::Package:: *)

maxDigit=NestWhile[#+1&,2,IntegerLength@Total[IntegerDigits[10^#-1]!]>#&]


Parallelize[Select[Range[10,10^maxDigit-1],Total[IntegerDigits[#]!]==#&]]//Total//Print
