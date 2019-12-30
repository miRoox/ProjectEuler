#!/usr/bin/env julia

export pe2

function pe2(n::Integer=4*10^6)
    function fib(n::Integer)
        if n==1||n==2
            n
        else
            fib(n-1)+fib(n-2);
        end
    end
    i=1;
    while fib(i)<n
        i+=1;
    end
    filter(iseven,fib.(1:i-1))|>sum
end

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe2()|>print
end
