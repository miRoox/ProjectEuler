(* ::Package:: *)

d[n_]:=d[n]=DivisorSum[n,Identity,#<n&]


Total@Select[#==d@d[#]!=d[#]&]@Range[2,10000]
