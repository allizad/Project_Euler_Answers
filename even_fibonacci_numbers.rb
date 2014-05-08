fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }

fib_evens = []

counter = 2
while fibonacci[counter] <= 4_000_000
	fib_evens << fibonacci[counter] if fibonacci[counter]%2==0
	counter += 1
end

puts fib_evens.inject(:+)

#much faster using a hash to populate fibonacci's than a method, which has to recalculate every fibonacci function.