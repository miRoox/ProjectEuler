#!/usr/bin/env wolframscript
(* ::Package:: *)

BeginPackage["ProjectEuler`"]

PE22

Begin["`PE22`"]

data=Block[{fileName="p022_names.txt"},
  fileName=FileNameJoin@{DirectoryName[$InputFileName],fileName};
  ToExpression/@StringSplit[Import[fileName],","]
]

score[char_,{index_}]:=Total@LetterNumber[char]*index

(*Parallelize to speed up*)
PE22[data:{__String}:data]:=Total@Parallelize[MapIndexed[score,Sort[data]]]

End[]

EndPackage[]


If[!TrueQ@$ProjectEulerWithoutResult,
  PE22[]//Print
]
