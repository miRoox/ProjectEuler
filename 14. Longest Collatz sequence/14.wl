#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE14

Begin["`PE14`"]

(* compile + memoize *)
impl=FunctionCompile@Function[{Typed[n,"Integer64"]},
  Module[{collatz=ConstantArray[0,n],maxi=0,max=0},
   Do[
    If[collatz[[i]]==0,
     (* evaluate every collatz chain *)
     Module[{j=i},
      While[j>1,
       If[EvenQ[j],
        j=Quotient[j,2],
        j=3j+1
       ];
       If[0<j<=n && collatz[[j]]>0,
        collatz[[i]]+=collatz[[j]];j=0;, (* memoize *)
        ++collatz[[i]];
       ]
      ]
     ]
    ];
    (* find longest *)
    If[collatz[[i]]>max,
     max=collatz[[i]];
     maxi=i;
    ],
    {i,n}
   ];
   maxi
  ]
];

PE14[]:=impl[1*^6]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE14[]//Print
]
