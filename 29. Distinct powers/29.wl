#!/usr/bin/env -S wolframscript -print
(* ::Package:: *)

PE29[l_Integer,h_Integer]:=Outer[Power,Range[l,h],Range[l,h]]//Flatten//DeleteDuplicates//Length

PE29[2,100]
