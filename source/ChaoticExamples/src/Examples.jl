module Examples

export greet, square, factorial


greet() = print("Hello World!")


function square(x)
    return x * x
end


function factorial(n)
    output = one(n)

    for number in 1:n
        output *= number
    end

    output  # The `return` is optional.
end

end # module
