#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*(*Find the rule of the series*)*)
(*FindSequenceFunction[{1,3,13,31},n]*)
(*FindSequenceFunction[{1,9,25,49},n]*)


(* ::Input:: *)
(*(*Each circle on the spiral is an arithmetic progression, except for the first circle*)*)
(*(7-10 n+4 n^2+1-4 n+4 n^2)*4/2*)


(* ::Input:: *)
(*(*The sum of the circles*)*)
(*Sum[2 (8-14 n+8 n^2),{n,n}]-4+1//Expand*)


-3+(14 n)/3-6 n^2+(16 n^3)/3/.{n->Quotient[1001,2]+1}//Print
