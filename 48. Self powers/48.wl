#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE48[]:=IntegerDigits[Sum[i^i,{i,1000}]][[-10;;]]//FromDigits


PE48[]
