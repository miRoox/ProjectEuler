#!/usr/bin/env wolframscript


Print["Wolfram Language Version: ", $Version];
Print["Running tests...","\n"];

If[FailureQ@Environment["WOLFRAM_ID"],
  CloudConnect[],
  CloudConnect[Environment["WOLFRAM_ID"], Environment["WOLFRAM_PASS"]]
];
If[!TrueQ@$CloudConnected,
  Print["Cloud connection failed!"];
  Exit[1]
]

Block[{$ProjectEulerWithoutResult=True},
  Get/@FileNames["*.wl", DirectoryName[$InputFileName,2], {2}]
]

Module[{report, time, results, failIdx},
  report=TestReport[
    FileNameJoin[{DirectoryName[$InputFileName], "tests.wlt"}]
  ];
  time=report["TimeElapsed"];
  results=report["TestResults"];
  failIdx=report["TestsFailedIndices"];
  Print["  ", Length[results], " tests run in ", TextString@time, "."];
  If[TrueQ@report["AllTestsSucceeded"]
    ,
    Print["  All tests succeeded!"];
    Exit[]
    ,
    Print["  ", Length[failIdx], " tests failed!"];
    Do[
      Print@TextString@Row[Values@results[i][{"TestID", "Outcome", "ActualMessages", "ActualOutput"}], " | "],
      {i, failIdx}
    ];
    Exit[1]
  ]
]
