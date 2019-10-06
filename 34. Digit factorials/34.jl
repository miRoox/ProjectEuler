#!/usr/bin/env julia

intlength(n::Int)=length(digits(n))
fdsum(n::Int)=sum(factorial.(digits(n)))

max_digit=2
while intlength(fdsum(10^max_digit-1))>max_digit
    global max_digit +=1
end

filter(n->fdsum(n)==n,10:(10^max_digit-1))|>sum|>print
