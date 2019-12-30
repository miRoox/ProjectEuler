__precompile__(false)

module ProjectEuler

import Glob

function __init__()
    withenv("PROJECT_EULER_WITHOUT_RESULT"=>true) do
        for file in Glob.glob(["..",r"\d\..*",r".*\.jl"],@__DIR__)
            include(file)
        end
    end
end

end
