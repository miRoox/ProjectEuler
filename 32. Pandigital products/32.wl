#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE32

Begin["`PE32`"]

With[{pandigits=ConstantArray[1,9]~Append~0},
  hasPandigitalProduct[n_Integer]:=Or@@(DigitCount[n]+DigitCount[#]+DigitCount[n/#]==pandigits&)/@Divisors[n]
]

PE32[]:=With[{cand=Range[10,10^4]},
  With[{sel=ParallelMap[hasPandigitalProduct,cand]},
    Parallelize[Pick[cand,sel]]//Total
  ]
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE32[]//Print
]
