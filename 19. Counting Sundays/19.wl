#!/usr/bin/env wolframscript
(* ::Package:: *)

(*use built-in date function*)
Sunday/.CountsBy[DayRange[{1901,1,1},{2000,12,31},"BeginningOfMonth"],DateValue[#,"DayName"]&]//Print
