#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

(*just solve it!*)
PE31[n_Integer]:=FrobeniusSolve[{1,2,5,10,20,50,100,200},n]//Length

PE31[200]
