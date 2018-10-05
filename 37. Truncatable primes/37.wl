(* ::Package:: *)

truncatablePrimeQ[n_]:=
 And@@Table[PrimeQ[Quotient[n,10^(i-1)]]&&PrimeQ[Mod[n,10^i]],{i,IntegerLength@n}]


Module[{sum=0,count=0,p=11},
 While[count<11,
  p=NextPrime[p];
  If[truncatablePrimeQ[p],
   ++count;
   sum += p;
  ]
 ];
 sum
]
