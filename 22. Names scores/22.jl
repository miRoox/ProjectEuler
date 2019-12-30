#!/usr/bin/env julia

module PE22

using DelimitedFiles

const pnames = readdlm(joinpath(@__DIR__,"p022_names.txt"),',',String)[1,:];

score(str::AbstractString,index)=index*sum(Int.(collect(str)).-Int('A').+1)

end

export pe22

pe22(data::Vector{<:AbstractString}=PE22.pnames)=sum(PE22.score(val,i) for (i,val) in enumerate(sort(data)))

if !haskey(ENV,"PROJECT_EULER_WITHOUT_RESULT")
    pe22()|>print
end
