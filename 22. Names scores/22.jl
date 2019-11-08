#!/usr/bin/env julia

using DelimitedFiles

const pnames = readdlm("p022_names.txt",',',String)[1,:];

score(str::AbstractString,index)=index*sum(Int.(collect(str)).-Int('A').+1)

sum(score(val,i) for (i,val) in enumerate(sort(pnames)))|>print
