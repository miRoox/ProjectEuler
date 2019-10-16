#!/usr/bin/env julia

trig(n::Int)=n*(n+1)÷2

function divisorlength(n::Int)
    local s=0
    local ed=floor(√n)
    for i in 1:ed
        if n%i==0
            if i≠ed
                s+=1
            end
            s+=1
        end
    end
    s
end

begin
    local n=1
    while divisorlength(trig(n))≤500
        n+=1
    end
    trig(n)|>print
end

