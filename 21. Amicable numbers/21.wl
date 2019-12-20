#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Clear[PE21`d]
PE21`d[n_Integer]:=PE21`d[n]=DivisorSum[n,Identity,#<n&]

PE21[n_Integer]:=Total@Select[#==PE21`d@PE21`d[#]!=PE21`d[#]&]@Range[2,n]


PE21[10000]
