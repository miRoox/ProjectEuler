#!/usr/bin/env wolframscript
(* ::Package:: *)

rotateInt[n_Integer,k_Integer]:=FromDigits@RotateLeft[IntegerDigits[n],k]
circularPrimeQ[n_]:=And@@Table[PrimeQ@rotateInt[n,k],{k,IntegerLength[n]}]


Parallelize[Select[Range[2,1*^6],circularPrimeQ]]//Length//Print
