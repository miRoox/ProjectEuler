(* ::Package:: *)

(*just solve it!*)
With[{coefs={1,2,5,10,20,50,100,200}},
 With[{len=Length[coefs]},
  Solve[{coefs.Array[x,len]==200,And@@Thread[Array[x,len]>=0]},Array[x,len],Integers]
 ]
]//Length
