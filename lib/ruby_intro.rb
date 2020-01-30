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
  string = "Hello, "
  string << name
  # puts string
  return string
end

def starts_with_consonant? s
  # downcase the input string
  dc_s = s.downcase
  if (dc_s =~ /\A[b-df-hj-np-tv-z]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s =~ /^[01]*00$/ || s == "0")
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(num,price)
    if (num.empty?)
      raise ArgumentError.new("Invalid ISBN number!")
    elsif (price <= 0)
      raise ArgumentError.new("Invalid Price!")
    else
      @isbn = num
      @price = price
    end
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end
  
end
