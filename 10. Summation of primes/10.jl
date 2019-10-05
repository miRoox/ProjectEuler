#!/usr/bin/env julia

# need Primes.jl
# https://github.com/JuliaMath/Primes.jl
using Primes

primes(2*10^6)|>sum|>print
