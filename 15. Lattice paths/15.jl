#!/usr/bin/env julia

export pe15

pe15(n::Integer=20)=binomial(2n,n)

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe15()|>print
end
