#!/usr/bin/env wolframscript
(* ::Package:: *)

fileName="p022_names.txt";
fileName=FileNameJoin@{DirectoryName[$InputFileName],fileName};


data=ToExpression/@StringSplit[Import[fileName],","];


score[char_,{index_}]:=Total@LetterNumber[char]*index


(*Parallelize to speed up*)
Total@Parallelize[MapIndexed[score,Sort[data]]]//Print
