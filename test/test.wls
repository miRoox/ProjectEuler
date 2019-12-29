#!/usr/bin/env wolframscript

Print["Running tests..."];

Block[{$ProjectEulerWithoutResult=True},
  Get/@FileNames["*.wl", DirectoryName[$InputFileName,2], {2}]
]

With[{tr=TestReport[FileNameJoin[{DirectoryName[$InputFileName],"test.wlt"}]]},
  Exit@If[tr["AllTestsSucceeded"],
    Print["All tests passed!"];0,
    Print["Tests failed!\nIndex: ",tr["TestsFailedIndices"]];1
  ]
]
