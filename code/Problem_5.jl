# Find the smallest positive number that is evenly divisible by all number from 1 to 20?

function is_divisible(val, divisors)
    for divisor in divisors
        if val % divisor != 0
            return false
        end
    end
    return true
end

val = 2520
while !is_divisible(val, 2:20)
    val += 1
end

println("That number is $(val)")