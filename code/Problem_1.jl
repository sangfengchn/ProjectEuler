multiples = Int[]
sum_multiples = 0
# below 1000
for i = 3:1000-1
    if (i % 3 == 0) | (i % 5 == 0)
        push!(multiples, i)
        sum_multiples += i
    end
end

println("The top 10 of multiples: $(multiples[1:10])")
println("The sum of multiples: $(sum_multiples)")