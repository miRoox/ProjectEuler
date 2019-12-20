#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Once@With[{divs=Array[Prime,7]},
  PE43`subDivQ[n_List]:=Inner[Divisible,FromDigits/@Partition[n,3,1][[2;;]],divs,And]
]

PE43[]:=FromDigits/@Select[Permutations@Range[0,9],PE43`subDivQ]//Total


PE43[]
