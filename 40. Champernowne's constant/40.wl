(* ::Package:: *)

nmax=1000000;
upto=Ceiling[nmax/(Log10[nmax]-1)]


d=StringJoin[ToString/@Range[upto]]~StringPart~PowerRange[nmax]


Times@@FromDigits/@d
