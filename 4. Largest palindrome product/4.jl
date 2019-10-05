#!/usr/bin/env julia

ispalindrome(n)=digits(n)==reverse(digits(n))

flatten(array)=collect(Iterators.flatten(array))

let st=100, ed=999
    Vector(st:ed).*Vector(st:ed)' |> flatten |> (x->filter(ispalindrome,x)) |> maximum |> print
end
