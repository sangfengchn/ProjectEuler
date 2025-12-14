# not exceed four million
using BenchmarkTools

thrd = 4000000

function func_s1(thrd)
    fibonacci_seq = Int[1, 2]
    sum_even = 2
    while (fibonacci_seq[end] < thrd)
        push!(fibonacci_seq, fibonacci_seq[end] + fibonacci_seq[end-1])
        if fibonacci_seq[end] % 2 == 0
            sum_even += fibonacci_seq[end]
        end
    end
    if fibonacci_seq[end] % 2 == 0
        sum_even -= fibonacci_seq[end]
    end

    fibonacci_seq, sum_even
end

@btime func_s1(thrd)

function func_s2(thrd)
    fibonacci_seq = Int[1, 2]
    sum_even = 2
    while true
        push!(fibonacci_seq, fibonacci_seq[end] + fibonacci_seq[end-1])
        if fibonacci_seq[end] > thrd
            break
        end
        if fibonacci_seq[end] % 2 == 0
            sum_even += fibonacci_seq[end]
        end
    end
    fibonacci_seq, sum_even
end
@btime func_s2(thrd)

println("The top 10 values of fib: $(fibonacci_seq[1:10])")
println("Sum of even-values: $(sum_even)")