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

  for i in 2..n - 1
    if arr.at(i) >= largest
      second = largest
      largest = arr.at(i)
    elsif arr.at(i) >= second && arr.at(i) != largest
      second = arr.at(i)
    end
  end

  largest+second
end

def sum_to_n?(arr, number)
  n = arr.length
  if n <= 1
    return false
  end

  set = Set.new
  for i in arr
    if set.include?(number - i)
      return true
    end

    set.add?(i)
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  if string.empty?
    return false
  end
((string[0] =~ /[aeiou]/i ).nil?) and (!(string[0] =~ /[a-z]/i ).nil?)
  
end

def binary_multiple_of_4?(string)
  string == '0' || !(string =~ /^[01]*00$/).nil?
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    if(isbn.empty? || price <= 0)
      raise ArgumentError, 'Illegal arguments passed'
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def price=(price)
    @price=price
  end
  def price_as_string
    "$%0.2f"% [@price]
  end
end
