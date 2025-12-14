# Find the largest palindrome mede from the two 3-digit numbers.

function is_palindrome(val)
    val_str = string(val)
    val_str_rev = reverse(val_str)
    if val_str == val_str_rev
        return true
    else
        return false
    end
end

palindromes = Int[]
for i = 100:999
    for j = 100:999
        if is_palindrome(i*j)
            push!(palindromes, i*j)
        end
    end
end

println("The list of palindromes is $(palindromes).")
println("The larges palindrom is $(maximum(palindromes)).")