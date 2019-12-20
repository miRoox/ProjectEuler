#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE3[n_Integer]:=FactorInteger[n][[;;,1]]//Max

PE3[600851475143]
