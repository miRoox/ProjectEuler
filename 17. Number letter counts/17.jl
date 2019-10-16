#!/usr/bin/env julia

const ones=["one","two","three","four","five","six","seven","eight","nine",
    "ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"];
const tens=["","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"];

function toEnglish(n::Int)
    @assert 0<n<1000000 "$(n) is out of range!"
    if n<20
        ones[n]
    elseif n<100
        tens[n÷10]*(n%10≠0 ? "-"*ones[n%10] : "")
    elseif n<1000
        ones[n÷100]*" hundred"*(n%100≠0 ? " and "*toEnglish(n%100) : "")
    else
        toEnglish(n÷1000)*" thousand"*(n%1000≠0 ? " "*toEnglish(n%1000) : "")
    end
end

replace(join(toEnglish.(1:1000)),r"[^a-z]"=>"")|>length|>print
