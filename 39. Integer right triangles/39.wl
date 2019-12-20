#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)


PE39[n_Integer]:=Block[{results,maxVal},
  results=ParallelTable[Length@Solve[{a^2+b^2==c^2,0<a<b<c,a+b+c==p},{a,b,c},Integers],{p,n}];
  maxVal=Max@results;
  FirstPosition[results,maxVal]//First
]


PE39[1000]
