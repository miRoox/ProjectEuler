#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE36

Begin["`PE36`"]

basePalindromeQ[n_Integer,b_Integer]:=IntegerReverse[n,b]==n
basePalindromeQ[b_Integer][n_Integer]:=basePalindromeQ[n,b]
basePalindromeQ[b_List][n_Integer]:=And@@Thread@basePalindromeQ[n,b]

PE36[n_Integer:1*^6,b:{_Integer,_Integer}:{2,10}]:=
  Parallelize[Select[Range[n],basePalindromeQ[b]],DistributedContexts->Automatic]//Total

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE36[]//Print
]
