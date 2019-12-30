#!/usr/bin/env julia

export pe20

pe20(n::Integer=big(100))=factorial(n)|>digits|>sum

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe20()|>print
end
