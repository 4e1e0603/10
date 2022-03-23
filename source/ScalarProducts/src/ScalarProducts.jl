module ScalarProducts

using Plots
using LinearAlgebra
using BenchmarkTools


"""
    scalar_product_v1(x, y)

Compute the scalar product of two vectors using the for loop.
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
    scalar_product_v2(x, y)

Compute the scalar product of two vectors using the list comprehension.
"""
function scalar_product_v2(x::Array{Float64,1}, y::Array{Float64,1})
    return sum([i * j for (i,j) in [x, y]])
end


"""
    scalar_product_v3(x, y)

Compute the scalar product of two vectors using element-wise `.*` operation.
"""
function scalar_product_v3(x::Array{Float64,1}, y::Array{Float64,1})
    return sum(x .* y)
end


"""
    scalar_product_v4(x, y)

Compute the scalar product of two vectors using `LinearAlgebra.dot()` function.
"""
function scalar_product_v4(x::Array{Float64,1}, y::Array{Float64,1})
    return dot(x, y)
end


"""
    test(F, N)

Generates a couple of random vectors of length `N:100:M` and plot the time necessary
for a functions from your module to calculate the result.
"""
function test(N::Int64, M::Int64)
    # Don't call @time not in global scope if you
    # like to get proper allocation info from time macro, see
    # https://stackoverflow.com/a/46263352 and https://stackoverflow.com/a/46660228.

    ns = N:100:M

    fs = [
        scalar_product_v1,
        scalar_product_v2,
        scalar_product_v3,
        scalar_product_v4
    ]

    gr()    # Empty plot with GR backend.
    plot()

    for f in fs
        # The function `f` is compiled here because
        # you like to exclude compile time from test.

        f(rand(Float64, N), rand(Float64, N))

        ts = Vector{Float64}()

        for n in ns
            x = rand(Float64, n)
            y = rand(Float64, n)
            t = @elapsed f(x, y)
            append!(ts, t)
        end
        plot!(ns, ts, title = "Benchmarks")
    end

    savefig("Benchmarks.png")
end


end # module
