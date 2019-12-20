#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

(* ::Input:: *)
(*Solve[{t>n>0,t==n (n+1)/2},n]*)


PE42`importData[]:=Once@Block[{fileName="p042_words.txt"},
  fileName=FileNameJoin@{DirectoryName[$InputFileName],fileName};
  ToExpression/@StringSplit[Import[fileName],","]
]


PE42`triangleNumberQ[n_]:=IntegerQ[(Sqrt[1+8n]-1)/2]
PE42`total[list_List]:=Total[list]
PE42`total[n_]:=n
PE42`triangleWordQ[str_String]:=PE42`triangleNumberQ@PE42`total@LetterNumber[str]


PE42[data_List]:=Select[data,PE42`triangleWordQ]//Length


PE42[PE42`importData[]]
