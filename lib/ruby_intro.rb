# When done, submit this entire file to the autograder.
#Kimberly Zhu September 2019
# Part 1

def sum (arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    return sum
end

def max_2_sum(arr)
    biggest = 0
    big = 0
    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    end
    
    biggest = [arr[0],arr[1]].max
    big = [arr[0],arr[1]].min
    for num in 2...arr.length
        if arr[num] > biggest
            biggest = arr[num]
        elsif arr[num] > big
            big = arr[num]
        end
    end
        return biggest + big
end

def sum_to_n?(arr, n)
    if arr.length == 0 || arr.length == 1
        return false
    end
    for i in 0...arr.length
        for j in 0...arr.length
            if i != j && arr[i] + arr[j] == n
                return true
            end
        end
    end
    return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  temp = s.downcase
  return temp =~ /\A[^aeiou]/ && temp =~ /\A[a-z]/ #\A is start of string, ^ is negated
end

def binary_multiple_of_4? s
  if s =~ /[^0-1]/ || s.length == 0
      return false
  end
  multiplier = 1
  sum = 0
  for digit in 0...s.length
      temp = multiplier * s[s.length - 1 - digit].to_i
      multiplier *= 2
      sum += temp
  end
  return true if sum%4 == 0
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        if isbn.length == 0 or price <= 0
            raise ArgumentError
        end
        @isbn = isbn
        @price = price
    end
    
    def isbn
        return @isbn
    end
    
    def price
        return @price
    end
    
    def isbn=(isbn)
        @isbn = isbn
    end
    
    def price=(price)
        @price = price
    end
    
    def price_as_string()
        return sprintf("$%.2f", @price)
    end
end
