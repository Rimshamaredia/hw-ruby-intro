# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  arr.sort{ |x, y| y <=> x }.take(2).reduce(:+)  
end

def sum_to_n?(arr, n)
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end


# Part 2

def hello(name)
  "Hello, #{name}"
end
#check
def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end
    
    


def binary_multiple_of_4? s
  return true if s == "0"
  if /^[01]*(00)$/.match(s) #regex
    return true
  end
end

#Part 3

class BookInStock

	attr_accessor :isbn
	attr_accessor :price
#Constructor
	def initialize isbn, price
		raise ArgumentError, 
		  "Illegal argument" if price <=0 || isbn.empty?
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price) #Ref: https://stackoverflow.com/questions/17479795/converting-a-decimal-to-price-format-in-ruby/17479967
	end
end