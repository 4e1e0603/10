

function Plus(a, b)
    return a + b
end


function factorial(n)
    if n == 0 or n == 1 
        return 1
    end
    return n * factorial(n - 1)
end


begin
    print(
        Plus(1, 1)
    )
end