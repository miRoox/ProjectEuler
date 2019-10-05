#!/usr/bin/env wolframscript
(* ::Package:: *)

n=5;
maxDigit=NestWhile[#+1&,2,IntegerLength@Total[IntegerDigits[10^#-1]^n]>#&]


Range[2,10^maxDigit-1]//Select[Total[IntegerDigits[#]^n]==#&]//Total//Print
