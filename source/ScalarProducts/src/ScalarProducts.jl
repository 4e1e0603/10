module ScalarProducts


using LinearAlgebra


"""
    Using the for loop.
"""
function scalar_product_v1(x::Array{Float64,1}, y::Array{Float64,1})
    @assert length(x) == length(y)

    tmp::Float64 = 0.

    for i in 1:length(x)
        tmp += x[i] * y[i]
    end

    return sum(tmp)
end


"""
    Using the list comprehension.
"""
function scalar_product_v2(x::Array{Float64,1}, y::Array{Float64,1})
    return sum([i * j for (i,j) in [x, y]])
end


"""
    Using element-wise `.*` operation.
"""
function scalar_product_v3(x::Array{Float64,1}, y::Array{Float64,1})
    return sum(x .* y)
end


"""
    Using builtin `dot` function from `LinearAlgebra` package.
"""
function scalar_product_v4(x::Array{Float64,1}, y::Array{Float64,1})
    return dot(x, y)
end


"""
    Generates a couple of random vector of length `N` and returns the time necessary
    for a function `F` from your new module to calculate the result.
"""
function test(F::Function, N::Int64)
    x::Array{Float64, 1} = rand(Float64, N)
    y::Array{Float64, 1} = rand(Float64, N)

    return @time F(x, y)
end


end # module
