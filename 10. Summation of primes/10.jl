#!/usr/bin/env julia

export pe10

# need Primes.jl
# https://github.com/JuliaMath/Primes.jl
using Primes

pe10(n::Integer=2*10^6)=primes(n)|>sum

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe10()|>print
end
