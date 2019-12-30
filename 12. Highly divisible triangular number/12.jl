#!/usr/bin/env julia

module PE12

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

end

export pe12

function pe12()
    local n=1
    while PE12.divisorlength(PE12.trig(n))≤500
        n+=1
    end
    PE12.trig(n)
end

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe12()|>print
end
