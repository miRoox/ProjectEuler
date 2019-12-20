#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Once@With[{
  oneDigits={"one","two","three","four","five","six","seven","eight","nine",
             "ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"},
  tenDigits={"","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"}},
  SetAttributes[PE17`toEnglish,Listable];
  PE17`toEnglish[n_Integer/;0<n<20]:=oneDigits[[n]];
  PE17`toEnglish[n_Integer/;20<=n<100]:=tenDigits[[Quotient[n,10]]]<>If[Mod[n,10]!=0,oneDigits[[Mod[n,10]]],""];
  PE17`toEnglish[n_Integer/;100<=n<1000]:=oneDigits[[Quotient[n,100]]]<>"hundred"<>If[Mod[n,100]!=0,"and"<>PE17`toEnglish[Mod[n,100]],""];
  PE17`toEnglish[n_Integer/;1000<=n<1000000]:=PE17`toEnglish[Quotient[n,1000]]<>"thousand"<>If[Mod[n,100]!=0,PE17`toEnglish[Mod[n,1000]],""];
  PE17[n_Integer]:=StringJoin@PE17`toEnglish@Range[n]//StringLength
]


PE17[1000]
