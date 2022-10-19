# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  arr = arr.sort{ |x, y| y <=> x }
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if n.zero?
  return arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  return true if s == "0"
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    raise ArgumentError.new(
      "ISBN must be a non-empty string"
    ) if isbn.empty?
    raise ArgumentError.new(
      "Price must be greater than 0"
    ) if price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$%0.2f" % @price
  end

end
