(* ::Package:: *)

Outer[Power,Range[2,100],Range[2,100]]//Flatten//DeleteDuplicates//Length
