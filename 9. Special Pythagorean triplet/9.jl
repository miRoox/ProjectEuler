#!/usr/bin/env julia

let n=1000
    [a*b*c for a in 1:n, b in 1:n, c in 1:n if a^2+b^2==c^2 && a+b+c==n && a<b<c]|>first|>print
end
