# A number is a perfect square, or a square number, if it is the square of a positive integer.
# For example,  is a square number because    ; it is also an odd square.
# The first 5 square numbers are: , and the sum of the odd squares is    .
# Among the first 474 thousand square numbers, what is the sum of all the odd squares?

square_nums = Int[]
sum_square_nums = 0
for i = 1:474000
    # square_nums += [i^2]
    push!(square_nums, i^2)
    # odd square
    if square_nums[end] % 2 == 1
        sum_square_nums += square_nums[end]
    end
end
println("The top 10 of results is $(square_nums[1:10])")
println("The sum is: $(sum_square_nums)")
