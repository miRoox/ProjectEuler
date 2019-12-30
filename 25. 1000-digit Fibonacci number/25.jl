#!/usr/bin/env julia

export pe25

function pe25(n::Integer=1000)
    fib(n::Integer) = ([1 1;1 0]^n)[1,2]
    i=big(1)
    while ndigits(fib(i))<n
        i+=1
    end
    i
end

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe25()|>print
end
