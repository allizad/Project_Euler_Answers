# A palindromic number reads the same both ways. The largest palindrome made from the product of two
# 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#  palindrome = XXX * YYY
#100 * 999
# 10_000..998_001

palindromes = []

(10_000..998_001).each do |i|
	if i.to_s == i.to_s.reverse
		palindromes << i
	end
end

puts palindromes.max