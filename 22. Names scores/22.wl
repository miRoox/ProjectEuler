(* ::Package:: *)

data=ToExpression/@StringSplit[Import[FileNameJoin@{NotebookDirectory[],"p022_names.txt"}],","];


score[char_,{index_}]:=Total@LetterNumber[char]*index


(*Parallelize to speed up*)
Total@Parallelize[MapIndexed[score,Sort[data]]]
