#  Largest palindrome product
#  Problem 4
#  A palindromic number reads the same both ways. 
#  The largest palindrome made from the product of
#  two 2-digit numbers is 9009 = 91 × 99.
#  
#  Find the largest palindrome made from the product
#  of two 3-digit numbers.

def is_palindrome?(num)
	num.to_s.reverse == num.to_s
end

def largest_palindrome_product(product_max_digits)
	max_product = "9" * product_max_digits
	min_product = "1" + ("0" * (product_max_digits-1))
	min_product = min_product.to_i
	max_product = max_product.to_i

	largest = 0
	largest_x = 0
	largest_y = 0

	min_product.upto(max_product) do |x|
		min_product.upto(max_product) do |y|
			product = x * y
			largest = [largest, product].max if is_palindrome?(product)
		end
	end
	return largest
end

puts largest_palindrome_product(2).to_s + "\n\n"

puts largest_palindrome_product(3).to_s + "\n\n"