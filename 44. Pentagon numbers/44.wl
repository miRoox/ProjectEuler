#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE44

Begin["`PE44`"]


(* ::Input:: *)
(*Solve[{p==n (3n-1)/2,0<n<=p},n]*)


(* "Compile" for speed *)
PE44=With[{
 penta=Compile[{{n,_Integer}},Quotient[n(3n-1),2]],
 pentaQ=Compile[{{p,_Integer}},p>0&&FractionalPart[(1+Sqrt[1+24p])/6]==0.]},
 Compile[{},
  Module[{pj=1,pk=5,j=1,k=2,minD=-1,diff=0},
   While[True,
    pk=penta[k];
    (* Difference between Subscript[P, k] and Subscript[P, k-1] is always become larger and larger, so we can conclude searching. *)
    If[minD>0&&pk-penta[k-1]>=minD,Break[]];
    For[j=k-1,j>=1,--j,
     pj=penta[j];
     diff=pk-pj;
     (* More test is useless because we are searching for min. *)
     If[minD>0&&diff>=minD,Break[]];
     If[pentaQ[diff]&&pentaQ[pk+pj],minD=diff]
    ];
    ++k
   ];
   minD
  ]
 ]
]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE44[]//Print
]
