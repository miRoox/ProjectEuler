#!/usr/bin/env julia

module PE14

# collatz(n::Int) = iseven(n) ? collatz(n÷2)+1 : collatz(3n+1)+1

function collatz(n::Integer)
    local len=0;
    while n>1
        n = iseven(n) ? n÷2 : 3n+1;
        len += 1;
    end
    len
end

end

export pe14

pe14(n::Integer=10^6)=PE14.collatz.(1:n)|>findmax|>last

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe14()|>print
end
