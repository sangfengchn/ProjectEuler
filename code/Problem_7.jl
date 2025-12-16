using BenchmarkTools

function func_is_prime(a)
    
    if a == 1
        return false
    elseif a == 2
        return true
    end 

    for i = 2:floor(Int, a/2)
        if a % i == 0
            return false
        end
    end
    
    return true
end

function func_find_prime(n)
    i = 1
    res = 2
    while i < n
        res += 1
        if func_is_prime(res)
            i += 1
        end
    end
    return res
end

@btime func_find_prime(4)
@btime func_find_prime(10001)