#!/usr/bin/env wolframscript

Print["Benchmarking..."];

idPart[name_String]:=StringDrop[name,2]

Block[{$ProjectEulerWithoutResult=True},
  Get/@FileNames["*.wl", DirectoryName[$InputFileName,2], {2}]
]

Do[
  With[{f=Symbol[fn]},Echo[First@RepeatedTiming[f[],1],idPart[fn]<>": ",TextString]],
  {fn,SortBy[Names["ProjectEuler`PE*"],ToExpression@*idPart]}
]
