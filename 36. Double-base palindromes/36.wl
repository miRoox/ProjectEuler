(* ::Package:: *)

basePalindromeQ[n_Integer,b_Integer]:=IntegerReverse[n,b]==n
basePalindromeQ[b_Integer][n_Integer]:=basePalindromeQ[n,b]
basePalindromeQ[b_List][n_Integer]:=And@@Thread@basePalindromeQ[n,b]


Parallelize[Select[Range[1*^6],basePalindromeQ[{2,10}]]]//Total
