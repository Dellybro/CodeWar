class PrimeFactorizer
	def initialize(number)
		@number = number
	end

	def factor

		factors = Hash.new()
		n = @number
		idx = 2
		while idx <= n
			while n % idx == 0
				if factors[idx] == nil then factors[idx] = 1 else factors[idx]+=1 end
				n /= idx
			end
			idx+=1
		end


		return factors
	end
end

def square_digits num
  newNumber = []
  num.to_s.each_char do |x|
    newNumber << x.to_i**2
  end
  newNumber.join("")
end
	# return an array
def fizzbuzz(n)
  (1..n).map { |x| x%15==0 ? "FizzBuzz" : x%5==0 ? "Buzz" : x%3==0 ? "Fizz" : x }
end
def autocorrect(input)
	#Regex
  	input.gsub(/\b(you+|u)\b/i, 'your sister')
end

def palindrome(string)
	words = string.tr('^A-Za-z0-9', '').downcase
	count = words.size
	words.chars.all? do |x|
    	count -= 1
    	x == words[count]
  	end
end

def palindrome(string)
	words = string.tr('^A-Za-z0-9', '').downcase
	i=0
	while i < words.length
    	if words[i] != words[(words.length - 1) - i]
      		return false
    	end
    	i += 1
 	 end
  	return true
end
def title_case(title, minor_words=nil)
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end
puts title_case("a clash of clans") 

puts palindrome("Amore, Roma")
puts palindrome("A man, a plan, a canal: Panama")
puts palindrome("No 'x' in 'Nixon'")
puts palindrome("Abba Zabba, you're my only friend")

print autocorrect("u")

print fizzbuzz(10)

square_digits(15)



print PrimeFactorizer.new(13).factor