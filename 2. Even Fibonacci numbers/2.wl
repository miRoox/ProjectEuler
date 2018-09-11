(* ::Package:: *)

sol=RSolve[{f[n]==f[n-1]+f[n-2],f[1]==1,f[2]==2},f[n],n]


fn[n_]=f[n]/.sol[[1]]


n=Module[{i=1},While[fn[i]<4*^6,++i];i-1]


Array[fn,n]//Select[EvenQ]//Total
