#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE42

Begin["`PE42`"]


(* ::Input:: *)
(*Solve[{t>n>0,t==n (n+1)/2},n]*)


data=Block[{fileName="p042_words.txt"},
  fileName=FileNameJoin@{DirectoryName[$InputFileName],fileName};
  ToExpression/@StringSplit[Import[fileName],","]
]

triangleNumberQ[n_]:=IntegerQ[(Sqrt[1+8n]-1)/2]
total[list_List]:=Total[list]
total[n_]:=n
triangleWordQ[str_String]:=triangleNumberQ@total@LetterNumber[str]

PE42[data_List:data]:=Select[data,triangleWordQ]//Length

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE42[]//Print
]
