(* ::Package:: *)

For[n={285,165,143};tmp={1},Max[tmp]<=40755,n*=2,
 tmp=Intersection[
  Table[k (k+1)/2, {k,n[[1]]+1,2n[[1]]}],
  Table[k (3k-1)/2,{k,n[[2]]+1,2n[[2]]}],
  Table[k(2k-1),  {k,n[[3]]+1,2n[[3]]}]
 ]
]
First@tmp
