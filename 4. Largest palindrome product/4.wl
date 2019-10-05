#!/usr/bin/env wolframscript
(* ::Package:: *)

With[{n=3},
 With[{start=10^(n-1),end=10^n-1},
  Table[i*j,{i,end,start,-1},{j,i,start,-1}]//Flatten//Sort//Reverse
    //Scan[If[PalindromeQ[#],Throw[#]]&]//Catch
 ]
]//Print
