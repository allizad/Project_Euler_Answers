#Problem No. 8 in Project Euler!
#lines of code in actual computation: 12 (everything below "maximum = product_at_position.max" is for display) 


number = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

=begin
another recursive problem
largest possible = 99999
smallest possible = 00000
the largest possible will also have the largest sum of its 5 integers, 
...and it won't matter where it starts
need to get the computer to loop through the number and find the highest grouping of integers
but the problem is that you could start in any position from position 0 to 1000-5 and get a row.
but not if I just change my increment by one space and tell the computer to add up the next five after!!!
This means I'll store it in a hash? where hash[key], 
 k=0, is the first five digits, 73167, 
 and k=1, is the next five, 31671, etc

need to convert number to a string so there's an inherent array


=end
#1: convert number to a string, so there's an index of every number

string_of_number = number.to_s

#2: create an array to store your products, ex: array[0] = product of the first five numbers, etc
# this means that a range of numbers following another_array[a] = array[a]*array[a+1]*array[a+2]*array[a+3]*array[a+4]
# it could be done with a hash, see below...

product_at_position = []

(0..(string_of_number.length-5)).each do |a|
	product_at_position[a] =
		string_of_number[a].to_i *
		string_of_number[a+1].to_i *
		string_of_number[a+2].to_i *
		string_of_number[a+3].to_i *
		string_of_number[a+4].to_i
end

#3: find in the array the largest product  - could do this by <=> comparison...or maybe there's a method? (found the method on stack overflow)

maximum = product_at_position.max

#4: the array index for that largest value will be the index reference for the number - well, the string of that number
# I could insert arrows around the digits inside the string to display where this number is. 
#I added an arrow on the left of the section of the digits using insert. I did it on the right side, too, but had to add to arrow index spaces, too

position_of_maximum = product_at_position.index maximum

string_defined_number = string_of_number.insert(position_of_maximum, " --> ")
string_of_defined_number = string_defined_number.insert((position_of_maximum+5+" --> ".length), " <-- ")

puts "The answer starts at position #{position_of_maximum} on the number, as it is converted to a string."

puts string_of_defined_number


# Other ways to loop through the big number:

# counter = 0
# while counter < 1000-4
# 	product_at_position[counter] =
# 		string_of_number[a].to_i *
# 		string_of_number[a+1].to_i *
# 		string_of_number[a+2].to_i *
# 		string_of_number[a+3].to_i *
# 		string_of_number[a+4].to_i
# 		counter += 1
# end



# hash = Hash.new do |hash, k|
# 	hash[string_of_number[k]] = 
# 		string_of_number[k].to_i *
# 		string_of_number[k+1].to_i *
# 		string_of_number[k+2].to_i *
# 		string_of_number[k+3].to_i *
# 		string_of_number[k+4].to_i
# end






