#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Once@With[{pandigits=ConstantArray[1,9]~Append~0},
  PE32`hasPandigitalProduct[n_Integer]:=Or@@(DigitCount[n]+DigitCount[#]+DigitCount[n/#]==pandigits&)/@Divisors[n]
]


PE32[]:=With[{cand=Range[10,10^4]},
  With[{sel=ParallelMap[PE32`hasPandigitalProduct,cand]},
    Parallelize[Pick[cand,sel]]//Total
  ]
]

PE32[]
