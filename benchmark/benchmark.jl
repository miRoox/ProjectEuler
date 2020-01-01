#!/usr/bin/env julia
using ProjectEuler
using Statistics
using BenchmarkTools

syms=filter(s->occursin(r"pe\d*",string(s)),names(ProjectEuler))

suite = BenchmarkGroup()

for f in syms
    id = parse(Int,string(f)[3:end])
    suite[id]=@benchmarkable $(eval(f))()
end

tune!(suite)

results = run(suite, verbose = true)

for (k,v) in results
    println(k,": ",median(v))
end
