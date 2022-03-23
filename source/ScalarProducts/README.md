# ScalarProducts

__The examples of various implementations of scalar product in Julia language.__

## Tests

- [ ] Define unit tests for your functions in `test` directory.

## Bencharks

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
