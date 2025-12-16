using BenchmarkTools

function func_sum_of_squares(n)
    res = 0
    for i = 1:n
        res += i^2
    end
    return res
end

function func_square_of_sum(n)
    return sum(1:n)^2
end

function func_diff(n)
    return func_square_of_sum(n) - func_sum_of_squares(n)
end

@btime func_diff(10)
@btime func_diff(100)