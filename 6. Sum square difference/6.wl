#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE6[n_Integer]=Once[Sum[i,{i,n}]^2-Sum[i^2,{i,n}] //Simplify]

PE6[100]
