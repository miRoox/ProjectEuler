#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE25[n_Integer]:=NestWhile[#+1&,1,IntegerLength@Fibonacci[#]<n&]

PE25[1000]
