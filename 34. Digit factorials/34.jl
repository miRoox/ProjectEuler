#!/usr/bin/env julia

export pe34

function pe34()
    intlength(n::Integer)=length(digits(n))
    fdsum(n::Integer)=sum(factorial.(digits(n)))
    max_digit=2
    while intlength(fdsum(10^max_digit-1))>max_digit
        max_digit +=1
    end
    filter(n->fdsum(n)==n,10:(10^max_digit-1))|>sum
end

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe34()|>print
end
