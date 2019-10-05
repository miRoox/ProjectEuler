#!/usr/bin/env julia

# need Primes.jl
# https://github.com/JuliaMath/Primes.jl
using Primes

factor(Vector,600851475143)|>maximum|>print
