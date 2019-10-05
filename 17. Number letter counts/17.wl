#!/usr/bin/env wolframscript
(* ::Package:: *)

oneDigits={"one","two","three","four","five","six","seven","eight","nine",
           "ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"};
tenDigits={"","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"};
SetAttributes[toEnglish,Listable];
toEnglish[n_Integer/;0<n<20]:=oneDigits[[n]]
toEnglish[n_Integer/;20<=n<100]:=tenDigits[[Quotient[n,10]]]<>If[Mod[n,10]!=0,"-"<>oneDigits[[Mod[n,10]]],""]
toEnglish[n_Integer/;100<=n<1000]:=oneDigits[[Quotient[n,100]]]<>" hundred"<>If[Mod[n,100]!=0," and "<>toEnglish[Mod[n,100]],""]
toEnglish[n_Integer/;1000<=n<1000000]:=toEnglish[Quotient[n,1000]]<>" thousand"<>If[Mod[n,100]!=0," "<>toEnglish[Mod[n,1000]],""]


StringReplace[StringJoin@toEnglish@Range[1000],Except[WordCharacter]..->""]//StringLength//Print
