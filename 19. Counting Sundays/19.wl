#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

(*use built-in date function*)
PE19[]:=Sunday/.CountsBy[DayRange[{1901,1,1},{2000,12,31},"BeginningOfMonth"],DateValue[#,"DayName"]&]

PE19[]
