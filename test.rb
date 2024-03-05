def add(numbers)
    return 0 if numbers.empty?
    numbers_list = numbers.gsub("\n", ",").split(",")
    sum = 0
    numbers_list.each { |num| sum += num.to_i }
    sum
end
  
# Test cases
puts add("")
puts add("1")
puts add("1,5")
# 2 Allow the add method to handle an any amount of numbers.
puts add("1,2,3,4,5")
puts add("10,20,30,40,50")
# 3 Allow the add method to handle new lines between numbers (instead of commas
puts add("1\n2,3")    # Output: 6
puts add("10\n20,30") # Output: 60