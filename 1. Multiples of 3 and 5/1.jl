#!/usr/bin/env julia

let n=1000
    union(3:3:(n-1),5:5:(n-1))|>sum|>print
end

