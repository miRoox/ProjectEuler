#!/usr/bin/env julia

export pe7

# need Primes.jl
# https://github.com/JuliaMath/Primes.jl
using Primes

pe7()=prime(10001)

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe7()|>print
end
