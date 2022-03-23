# ScalarProducts

__The examples of various implementations of scalar product in Julia language.__


## Development

### REPL

How to work in REPL (manula instalation and execution of packages/modules).

```
cd ScalarProducts
julia
julia> build
(@v1.6) pkg> add Plots  # It takes several minutes!
```

Include and reload the module.
```
julia> include("src/ScalarProducts.jl")
WARNING: replacing module ScalarProducts.
Main.ScalarProducts
```

Call the module functions.

```
julia> ScalarProducts.scalar_product_v1([1., 2., 3.], [3., 2., 1])
```

```
julia> ScalarProducts.test(10^2, 10^6)
```

- [ ] Define proper unit tests for your functions in `test` directory.

### Benchmarks

We can measure the time in REPL with `@time` macro e.g.

```julia
@time scalar_product_v1(rand(Float64, 10), rand(Float64, 10))
```

We can use `BenchmarkTools` package.

```julia
@benchmark scalar_product_v1(rand(Float64, 10), rand(Float64, 10))
```

## Resources

- http://blog.wouterkoolen.info/Julia-DotProduct/post.html
- https://hal.archives-ouvertes.fr/hal-02265534v1/document
- http://www.pkofod.com/2017/04/24/timing-in-julia/