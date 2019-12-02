#!/usr/bin/env julia

fib(n::Integer) = ([1 1;1 0]^n)[1,2]

let i=big(1)
    while ndigits(fib(i))<1000
        i+=1
    end
    i|>print
end
