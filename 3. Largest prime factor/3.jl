#!/usr/bin/env julia

export pe3

# need Primes.jl
# https://github.com/JuliaMath/Primes.jl
using Primes

pe3(n::Integer=600851475143)=factor(Vector,n)|>maximum

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe3()|>print
end
