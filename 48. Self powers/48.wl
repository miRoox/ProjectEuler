#!/usr/bin/env wolframscript
(* ::Package:: *)

IntegerDigits[Sum[i^i,{i,1000}]][[-10;;]]//FromDigits//Print
