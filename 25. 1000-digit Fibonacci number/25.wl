(* ::Package:: *)

NestWhile[#+1&,1,IntegerLength@Fibonacci[#]<1000&]
