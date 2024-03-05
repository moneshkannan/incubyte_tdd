def add(numbers)
    return 0 if numbers.empty?
    numbers_list = numbers.split(",")
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