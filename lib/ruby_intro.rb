# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = 0
  for i in arr
    sum += i
  end
  sum
end

def max_2_sum(arr)
  n = arr.length
  if n < 1
    return 0
  elsif n == 1
    return arr[0]
  end

  if arr.at(0) > arr.at(1)
    largest = arr.at(0)
    second = arr.at(1)
  else 
    largest = arr.at(1)
    second = arr.at(0)
  end

  for i in 2..n-1
    if arr.at(i) >= largest
      second = largest
      largest = arr.at(i)
    elsif arr.at(i) >= second and arr.at(i) != largest
      second = arr.at(i)
    end
  end

  return (largest+second)
end

def sum_to_n?(arr, number)
  n = arr.length
  if n <= 1
    return false
  end

  set = Set.new
  for i in arr
    if set.include?(number-i)
      return true
    end
    set.add?(i)
  end
  return false
end

# Part 2

def hello(name)
  return( "Hello, #{name}" )
end

def starts_with_consonant?(string)
  if string.length == 0
    return false
  end
  lower_str = string.downcase
  vowels = ['a','e','i','o','u']
  return !(vowels.include? lower_str[0])
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
