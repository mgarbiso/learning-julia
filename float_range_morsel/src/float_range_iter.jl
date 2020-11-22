module float_range_iter

const NAME = "float range iter"

export fr

import .iterate, .length, .eltype

struct fr
    start::AbstractFloat
    step::AbstractFloat
    stop::AbstractFloat
    # state::AbstractFloat
    # fr(start, step, stop, state) = fr(start, step, stop, state)
end

fr(start::Real, stop::Real) = fr(convert(Float64,start), 1.0, convert(Float64,stop))
fr(start::Real, step::Real, stop::Real) = fr(convert(Float64,start), convert(Float64,step), convert(Float64,stop))

iterate(iter::fr) = iter.start, 1

function iterate(iter::fr, state::Int)
    next_float = iter.step*(state) + iter.start
    if next_float > iter.stop
        return nothing
    else
        return next_float, state + 1
    end
end

eltype(::Type{fr}) = Float64

function length(iter::fr)::Int
    (iter.stop - iter.start)/iter.step + 1 |> floor
end


end # module
