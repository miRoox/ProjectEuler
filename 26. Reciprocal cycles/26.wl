#!/usr/bin/env wolframscript
(* ::Package:: *)

MapIndexed[{Length@Last@First@RealDigits[#1],First[#2]}&][1/Range[1000]]//MaximalBy[First]
%//Last//Last//Print



