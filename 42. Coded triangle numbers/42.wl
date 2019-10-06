#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*Solve[{t>n>0,t==n (n+1)/2},n]*)


fileName="p042_words.txt";
fileName=FileNameJoin@{DirectoryName[$InputFileName],fileName};


data=ToExpression/@StringSplit[Import[fileName],","];


triangleNumberQ[n_]:=IntegerQ[(Sqrt[1+8n]-1)/2]
total[list_List]:=Total[list]
total[n_]:=n
triangleWordQ[str_String]:=triangleNumberQ@total@LetterNumber[str]


Select[data,triangleWordQ]//Length//Print
