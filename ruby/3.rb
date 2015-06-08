#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143?
#Note: While this CAN calculate the given number, the calculation would probably take days.
number = 600851475143
current = number / 2
while (current > 1)
	#puts "Checking #{current}"
	if (number % current == 0) #If current is factor of number
		puts "Found factor: #{current}"
		prime = true
		for i in 2..current-1
			if (i > 2 and i % 2 == 0)
				next
			end
			if (current % i == 0)
				puts "Not prime."
				prime = false
				break
			end
		end
		if (prime)
			break
		end
	end
	current -= 1
end
puts "#{current} is the largest prime factor of #{number}."