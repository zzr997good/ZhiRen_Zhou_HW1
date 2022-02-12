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
  searchSet=new set
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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
