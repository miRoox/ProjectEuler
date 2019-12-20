#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

Once[
(*Find the rule of the series*)
PE28`rule1=FindSequenceFunction[{1,3,13,31},n];
PE28`rule2=FindSequenceFunction[{1,9,25,49},n];

(*Each circle on the spiral is an arithmetic progression, except for the first circle*)
PE28`sum[n_Integer]=Sum[PE28`rule1+PE28`rule2,{n,n}]-4+1//Expand;

PE28[n_Integer]=PE28`sum[Quotient[n,2]+1]
]

PE28[1001]
