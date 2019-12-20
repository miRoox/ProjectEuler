#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE1[n_Integer]:=Union[Range[3,n-1,3],Range[5,n-1,5]]//Total

PE1[1000]
