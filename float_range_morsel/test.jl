using Pkg
pkg"activate ."

include("src/float_range_iter.jl")

using .float_range_iter

testfr = fr(2.0, 9.5)

typeof(testfr)

iterate(testfr)

iterate(testfr, 5)

for i in testfr
    println(i)
end

6.0 in testfr

length(testfr)

[i for i in testfr]

collect(testfr)
