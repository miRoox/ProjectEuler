#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE26[n_Integer]:=MapIndexed[{Length@Last@First@RealDigits[#1],First[#2]}&][1/Range[n]]//MaximalBy[First]//Last//Last

PE26[1000]
