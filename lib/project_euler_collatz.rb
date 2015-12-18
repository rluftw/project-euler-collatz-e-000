def even_next(n)
	n/2
end

def odd_next(n)
	3*n+1
end

def next_value(n)
	n % 2 == 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
	if n == 1
		return [1]
	end
	[n] + collatz(next_value(n))
end

def longest_collatz
	counter = 1000000
	longest = 0
	longest_counter = 1000000
	until counter == 0
		answer = collatz(counter)	
		if answer.length > longest 
			longest_counter = counter
			longest = answer.length
		end
		counter -= 1
	end
	longest_counter
end
