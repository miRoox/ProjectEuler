#!/usr/bin/env wolframscript
(* ::Package:: *)

$templateFile="BenchmarkReport.md.tmp"
$outputFile="BenchmarkReport.md"
$remoteRoot="https://github.com/miRoox/ProjectEuler/blob/master/"


updateREADME::notmp="Template file `1` is lost. Cannont update `2`."


If[!FileExistsQ[$templateFile],Message[updateREADME::notmp,$templateFile,$outputFile];Exit[1]]


markdownHyperlink[context_,href_]:=TemplateApply["[`context`](`href`)",<|"context"->context,"href"->href|>]


fixPath[path_]:=URLBuild[{$remoteRoot,StringReplace[path,"\\"->"/"]}]


getId=StringReplace[(id:DigitCharacter..)~~"."~~__:>id]


getTitle[dirName_]:=StringReplace[dirName,DigitCharacter..~~". "~~title__:>markdownHyperlink[title,fixPath@FileNameJoin[{dirName,"README.md"}]]]

benchmark["Julia"][file_]:=First@AbsoluteTiming@RunProcess[{"julia",file}]
benchmark["Wolfram Language"][file_]:=First@AbsoluteTiming@RunProcess[{"wolframscript",file}]

benchmarkText[file_?FileExistsQ,lang_]:=markdownHyperlink[benchmark[lang][file],fixPath@file]
benchmarkText[_,_]:="/"


Options[markdownTable]={Alignment->Automatic}

markdownTable[table_?MatrixQ,headings_?VectorQ,opts:OptionsPattern[]]:=With[
 {cols=Length[headings]},
 StringRiffle[headings,{"| "," | "," |\n"}]<>StringRiffle[
  markdownTableSep[headings,OptionValue[Alignment]],{"|","|","|\n"}
 ]<>StringRiffle[table, "\n",{"| "," | "," |"}]
]

SetAttributes[markdownTableSep,Listable]

markdownTableSep[headings_,align_]:=
 If[MatchQ[align,Center|Left],":"," "]<>
 StringReplace[headings,Except["-"]->"-"]<>
 If[MatchQ[align,Center|Right],":"," "]


actions=<|
 "ID"->getId,
 "Description / Title"->getTitle,
 "Wolfram Language"->(benchmarkText[First[FileNames["*.wl",#],""],"Wolfram Language"]&),
 "Julia"->(benchmarkText[First[FileNames["*.jl",#],""],"Julia"]&)
|>


header=Keys[actions]


questionFolders=FileNames[]//Select[StringMatchQ[DigitCharacter..~~". "~~__]]//SortBy[ToExpression@*getId]


body=Outer[Construct,Values[actions],questionFolders]//Transpose


table=markdownTable[body,header,Alignment->Center]


tmp=Import[$templateFile,"Text",CharacterEncoding->"UTF8"]


out=TemplateApply[tmp,<|"table"->table|>]


Export[$outputFile,out,"Text",CharacterEncoding->"UTF8"]
