#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE35`rotateInt[n_Integer,k_Integer]:=FromDigits@RotateLeft[IntegerDigits[n],k]
PE35`circularPrimeQ[n_]:=And@@Table[PrimeQ@PE35`rotateInt[n,k],{k,IntegerLength[n]}]


PE35[n_Integer]:=Parallelize[Select[Range[2,n],PE35`circularPrimeQ]]//Length


PE35[1*^6]
