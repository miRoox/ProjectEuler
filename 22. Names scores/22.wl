#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE22`importData[]:=Once@Block[{fileName="p022_names.txt"},
  fileName=FileNameJoin@{DirectoryName[$InputFileName],fileName};
  ToExpression/@StringSplit[Import[fileName],","]
]

PE22`score[char_,{index_}]:=Total@LetterNumber[char]*index

(*Parallelize to speed up*)
PE22[data:{__String}]:=Total@Parallelize[MapIndexed[PE22`score,Sort[data]]]


PE22[PE22`importData[]]
