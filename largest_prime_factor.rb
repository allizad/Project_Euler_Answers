=begin
	
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
	
=end


this_number = 600851475143
require "Prime"

if this_number.prime? == true
	puts "Prime factors: #{this_number}."
else this_number.prime? == false
	prime_factors_of_number = this_number.prime_division
end

array_of_primes = []

prime_factors_of_number.each do |a|
	array_of_primes << a[0]
end

puts array_of_primes.max