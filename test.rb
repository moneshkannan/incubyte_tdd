def add(numbers)
    return 0 if numbers.empty?
    numbers_list = numbers.split(",")
    sum = 0
    numbers_list.each { |num| sum += num.to_i }
    sum
end
  
# Test cases
puts add("")    # Output: 0
puts add("1")   # Output: 1
puts add("1,5") # Output: 6
  