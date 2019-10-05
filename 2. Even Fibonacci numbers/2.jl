#!/usr/bin/env julia

function fib(n)
    if n==1||n==2
        n
    else
        fib(n-1)+fib(n-2);
    end
end

i=1;
while fib(i)<4*10^6
    global i+=1;
end

filter(iseven,fib.(1:i-1))|>sum|>print
