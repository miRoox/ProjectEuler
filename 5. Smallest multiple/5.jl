#!/usr/bin/env julia

export pe5

pe5()=lcm(1:20)

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe5()|>print
end
