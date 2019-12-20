#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE10[n_Integer]:=Sum[Prime[i],{i,PrimePi[n]}]

PE10[2*^6]
