(* ::Package:: *)

results=ParallelTable[Length@Solve[{a^2+b^2==c^2,0<a<b<c,a+b+c==p},{a,b,c},Integers],{p,1000}];


maxVal=Max@results


FirstPosition[results,maxVal]//First
