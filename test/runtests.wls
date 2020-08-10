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

Needs["MUnit`"]
Get["https://raw.githubusercontent.com/miRoox/CILogger-MUnit/master/CILogger/CILogger.wl"]

If[
  MUnit`TestRun[
    FileNameJoin@{DirectoryName[$InputFileName], "tests.wlt"},
    "Loggers" :> {CILogger`CILogger[]}
  ],
  Exit[],
  Exit[1]
]
