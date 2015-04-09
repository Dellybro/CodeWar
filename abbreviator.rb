def narcissistic?( value )

  numbers, total = value.to_s.split(""), 0
  numbers.map! {|x|	x.to_i**numbers.size }
  numbers.each {|val| total = total + val.to_i }
  return true if total.to_i == value.to_i
  return false
  # Code me
end

def solution(number)
	 total = 0
  	(1...number).map {|x| total = total + x if x % 3 == 0 || x % 5 == 0 	}
  	print total
  #your code here
end


def drop list, n
  # your solution here
  list.drop(n)
end

def is_prime(num)
  return false if num < 2
  idx = 2
  while idx < num
    return false if num % idx == 0
    idx+=1
  end
  return true
end

def palindrome string
  string = string.split(/\W+/).join("").downcase
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def first list, n=nil
  # your solution here
    return result = if n == nil then list[0] else list.shift(n) end
    #n ? list.first(n) : list.first
end

def zip (first, second)
  first.zip(second).flatten
end


def get_char_count string
  words = string.split("")
  hash = Hash.new()
  words.each {|x|
    hash[x] == nil ? hash[x] = 1 : hash[x]+=1
  }
  hash
    
end



puts get_char_count("Mississippi")

puts zip([1,2,3],[4,5,6])




puts palindrome("test")


puts drop([0,1,2,3,5,8,13], 5)

puts narcissistic?(153)