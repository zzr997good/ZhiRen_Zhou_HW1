# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum=0
  arr.each do |i|
    sum+=i
  end
  return sum
end

def max_2_sum arr
  if arr.length==0
    return  0
  elsif arr.length==1
    return arr[0]
  else
    return arr.sort{|x,y| y<=>x}[0]+arr.sort{|x,y| y<=>x}[1] #arr.sort does not make changes to original array, but creats a new sorted array
  end
end

def sum_to_n? arr, n
  searchSet=Set.new()
  arr.each do |i|
    if searchSet===(n-i)
      return true
    else
      searchSet.add(i)
    end
  end
  return false
  # return  arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty? || s =~ /[^[a-zA-Z]]/ || s[0] =~ /[aeiou]/i
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.empty? || s=~/[^0-1]/|| (s !~/100$/ && s!="0") #s="0" is a special condition
    return false
  end
  return true
end

# Part 3

class BookInStock
 attr_accessor:isbn
 attr_accessor:price
 def initialize(isbn,price)
   if isbn.empty?|| price<=0
     raise(ArgumentError, "ISBN number is the empty string or the price is less than or equal to zero")
   else
     @isbn,@price=isbn,price
   end
 end
 
 def price_as_string
   return "$"+sprintf("%.2f", @price)
 end
end
