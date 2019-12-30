#!/usr/bin/env julia

export pe9

pe9(n::Integer=1000)=[a*b*c for a in 1:n, b in 1:n, c in 1:n if a^2+b^2==c^2 && a+b+c==n && a<b<c]|>first

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe9()|>print
end
