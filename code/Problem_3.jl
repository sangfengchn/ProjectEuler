using BenchmarkTools

thrd = 600851475143
# thrd = 13195

function func_s1(thrd)
    # check if a number is prime.
    function func_isprime(value)
        for i = 2:floor(Int, value/2)
            if value % i == 0
                return false
            end
        end
        return true
    end
    # save all prime factors
    prime_factors = Int[]
    for i = 2:floor(Int, sqrt(thrd))
        if (thrd % i == 0) && func_isprime(i)
            push!(prime_factors, i)
        end
    end

    return prime_factors
end

@btime func_s1(thrd)
prime_factors = func_s1(thrd)

println("All prime factors of $(thrd) is $(prime_factors).")
println("The maximum prime factor of $(thrd) is $(maximum(prime_factors)).")