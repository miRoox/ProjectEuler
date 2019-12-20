#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE36`basePalindromeQ[n_Integer,b_Integer]:=IntegerReverse[n,b]==n
PE36`basePalindromeQ[b_Integer][n_Integer]:=PE36`basePalindromeQ[n,b]
PE36`basePalindromeQ[b_List][n_Integer]:=And@@Thread@PE36`basePalindromeQ[n,b]


PE36[n_Integer,b:{_Integer,_Integer}]:=Parallelize[Select[Range[n],PE36`basePalindromeQ[b]]]//Total


PE36[1*^6,{2,10}]
