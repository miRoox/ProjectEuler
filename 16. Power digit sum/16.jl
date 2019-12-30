#!/usr/bin/env julia

export pe16

pe16(n::Integer=big(2)^1000)=digits(n)|>sum

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe16()|>print
end
