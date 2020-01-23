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
    return arr.combination(2).any? {|a,b| (a + b) == n}
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
