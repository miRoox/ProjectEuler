#!/usr/bin/env wolframscript
(* ::Package:: *)

With[{n=1000},Union[Range[3,n-1,3],Range[5,n-1,5]]//Total]//Print
