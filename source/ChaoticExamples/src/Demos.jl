#
# Run examples defined in `Examples.jl` module.
#

include("./Examples.jl")

const ex = Examples

print(
    # s(2),
    # s(2.0),
    # s([2, 2])
    )

print(
    ex.factorial(1),
    ex.factorial(2),
    ex.factorial(3)
    )
