(* ::Package:: *)

(*Use Compile to solve it as quickly as possible *)
collatzChain=Compile[{{n,_Integer}},
 Module[{i=0,m=n},
  While[m>1,
   If[EvenQ[m],m=Quotient[m,2],m=3m+1];++i
  ];
  {n,i}
 ],
 RuntimeAttributes->{Listable},
 Parallelization->True
];


collatzChain[Range[1*^6]]//MaximalBy[Last]//First//First
