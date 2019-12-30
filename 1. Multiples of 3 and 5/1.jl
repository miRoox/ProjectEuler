#!/usr/bin/env julia

export pe1

pe1(n::Integer=1000)=union(3:3:(n-1),5:5:(n-1))|>sum

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe1()|>print
end
