#!/usr/bin/env wolframscript
(* ::Package:: *)

Sum[i,{i,n}]^2-Sum[i^2,{i,n}]/.{n->100}//Print
