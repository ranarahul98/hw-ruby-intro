# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
    # sum each item if array length is greater than zero, then return sum
    sum = 0
    if arr.length > 0
        arr.each do |item|
            sum += item
        end
    end
    return sum
end

def max_2_sum(arr)
    # two edge cases and then returning the sum of max two numbers
  if arr.empty?
      return 0
  end
  if arr.length == 1
      return arr.first
  end
  return arr.max(2).sum
end

def sum_to_n?(arr, n)
    # couple edge cases, then using combination function to make pairs of each combination of elements, then check if sum = n
    if arr.empty?
        return false
    end
    if arr.length == 1
        return false
    end
    return arr.combination(2).any? {|a,b| return true if a + b == n}
end

# Part 2

def hello(name)
    return "Hello, " + name
end

def starts_with_consonant?(s)
    #regex equation to check for lowercase consonants
    return s.downcase =~ /\A[b-df-hj-np-tv-z]/
end

def binary_multiple_of_4?(s)
    # https://stackoverflow.com/questions/19305067/regex-binary-multiple-of-4
    # if binary ends with '00' it is a multiple of 4
    #make sure 0 case is considered
   return s =~ /^(0|[10]*00)$/
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price #initialize instance variables

    def initialize(isbn, price)
        raise ArgumentError if isbn.length == 0
        raise ArgumentError if price <= 0
        @isbn = isbn
        @price = price
    end

    def price_as_string
        #formatting string to display float with 2 decimal places
        return "$%.2f" % @price
    end
end
