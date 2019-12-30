#!/usr/bin/env julia

export pe4

function pe4(st::Integer=100,ed::Integer=999)
    ispalindrome(n)=digits(n)==reverse(digits(n))
    maximum(i*j for i in st:ed, j in st:ed if ispalindrome(i*j))
end

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe4()|>print
end
