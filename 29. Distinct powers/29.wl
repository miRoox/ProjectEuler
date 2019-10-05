#!/usr/bin/env wolframscript
(* ::Package:: *)

Outer[Power,Range[2,100],Range[2,100]]//Flatten//DeleteDuplicates//Length//Print
