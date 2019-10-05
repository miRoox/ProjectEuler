#!/usr/bin/env wolframscript
(* ::Package:: *)

i=2;
While[AnyTrue[Range[i,i+3],PrimeNu[#]!=4&],++i]
i//Print
