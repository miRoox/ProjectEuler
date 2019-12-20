#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE33`badCancelQ[n_,d_]:=
 With[{n0=Mod[n,10],n1=Quotient[n,10],d0=Mod[d,10],d1=Quotient[d,10]},
  10<=n<d<=99&&(n0==d1&&n1/d0==n/d||n1==d0&&n0/d1==n/d)
 ]//Quiet


PE33[]:=Do[If[PE33`badCancelQ[n,d],Sow[n/d]],{d,10,100},{n,10,d}]//Reap//Last//Last//Apply[Times]//Denominator


PE33[]
