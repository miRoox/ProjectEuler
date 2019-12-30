#!/usr/bin/env julia

export pe6

pe6(n::Integer=100)=sum(1:n)^2-sum((1:n).^2)

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe6()|>print
end
