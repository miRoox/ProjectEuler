#!/usr/bin/env julia

let n=100
    sum(1:n)^2-sum((1:n).^2)  |> print
end
