# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # reject nil element
  new_arr = arr.reject { |n| n.nil?}
  # if arr is empty return zero
  if (new_arr.empty?)
    return 0
  # else return the sumation
  else
    sum = 0
    new_arr.each{ |n| sum = sum + n}
    return sum
  end
end

def max_2_sum arr
  new_arr = arr.reject { |n| n.nil?}
  if (new_arr.empty?)
    return 0
  elsif (new_arr.size == 1)
    return new_arr[0]
  else
    sorted_arr = new_arr.sort
    return sorted_arr[-1] + sorted_arr[-2]   
  end
end

def sum_to_n? arr, n
  new_arr = arr.reject { |n| n.nil?}
  if (new_arr.empty?)
    return false
  else
    h = {}
    new_arr.each_with_index do |num, index|
      aim = n - num
      return true if h[aim]
      h[num] = index
    end
    return false
  end
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
