#!/usr/bin/env julia

# collatz(n::Int) = iseven(n) ? collatz(n÷2)+1 : collatz(3n+1)+1

function collatz(n::T) where T<:Integer
    local len=0;
    while n>1
        n = iseven(n) ? n÷2 : 3n+1;
        len += 1;
    end
    len
end

collatz.(1:10^6)|>findmax|>last|>print
