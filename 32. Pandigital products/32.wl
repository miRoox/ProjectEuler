(* ::Package:: *)

pandigits=ConstantArray[1,9]~Append~0;
hasPandigitalProduct[n_Integer]:=Or@@(DigitCount[n]+DigitCount[#]+DigitCount[n/#]==pandigits&)/@Divisors[n]


LaunchKernels[];
With[{cand=Range[10,10^4]},
 With[{sel=ParallelMap[hasPandigitalProduct,cand]},
  Parallelize[Pick[cand,sel]]//Total
 ]
]
