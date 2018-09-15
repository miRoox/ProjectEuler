(* ::Package:: *)

sol=Solve[{a^2+b^2==c^2,a+b+c==1000,0<a<b<c},{a,b,c},Integers];

a b c/.sol[[1]]
