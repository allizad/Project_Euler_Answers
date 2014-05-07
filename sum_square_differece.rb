#create hash to propogate square of a number
square = Hash.new { |k, v| k[v] = v**2 }

#loop through a count less then 100, creating an array of numbers squared <= 100
array_of_squares = []
counter = 1
while counter <=100
	array_of_squares << square[counter]
	counter += 1
end

#add up elements in square array
sum_of_squares = array_of_squares.inject(:+)
# create a list of numbers less than 100
numbers_less_than_100 = Array(1..100)
# add the array
sum_of_numbers_less_than_100 = numbers_less_than_100.inject(:+)
# square the sum
square_of_sums = sum_of_numbers_less_than_100**2

difference = (sum_of_squares)-(square_of_sums)

puts "The difference between the sum of the squares of the first one hundred natural numbers (#{sum_of_squares}) and the square of the sum (#{square_of_sums}) is #{difference}."