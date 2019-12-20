#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

(*result of Permutations is under lexicographic order*)
PE24[]:=Permutations[Range[0,9]][[1*^6]]//FromDigits

PE24[]
