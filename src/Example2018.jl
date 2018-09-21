module Example2018

export Point
struct Point{T}
    x::T
    y::T
end

function Base. +(p::Point, q::Point)
    Point(p.x + q.x, p.y + q.y)
end



export MPoint
mutable struct MPoint{T}
    x::T
    y::T
end



###############################################################################



export Polynomial
struct Polynomial{T}
    coeffs::Vector{T}
end

export evaluate
function evaluate(p::Polynomial, x)
    sum(c * x^(i-1) for (i,c) in enumerate(p.coeffs))
end

function Base. +(p::Polynomial, q::Polynomial)
    l = max(length(p.coeffs), length(q.coeffs))
    rcoeffs = zeros(l)
    for (i,c) in enumerate(p.coeffs)
        rcoeffs[i] += c
    end
    for (i,c) in enumerate(q.coeffs)
        rcoeffs[i] += c
    end
    Polynomial(rcoeffs)
end

function Base. *(a, p::Polynomial)
    Polynomial(map(x->a*x, p.coeffs))
end
Base. *(p::Polynomial, a) = a*p

export deriv
function deriv(p::Polynomial)
    Polynomial([(i-1) * c for (i,c) in enumerate(p.coeffs)][2:end])
end



end
