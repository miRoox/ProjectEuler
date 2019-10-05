#!/usr/bin/env wolframscript
(* ::Package:: *)

NestWhile[#+1&,1,IntegerLength@Fibonacci[#]<1000&]//Print
