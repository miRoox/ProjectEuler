(* ::Package:: *)

divs=Array[Prime,7];
subDivQ[n_List]:=Inner[Divisible,FromDigits/@Partition[n,3,1][[2;;]],divs,And]


FromDigits/@Select[Permutations@Range[0,9],subDivQ]//Total
