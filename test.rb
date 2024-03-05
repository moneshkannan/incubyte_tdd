def add(numbers)
    return 0 if numbers.empty?
    delimiter = ","
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.slice(numbers.index("\n") + 1, numbers.length)
    end
    numbers_list = numbers.gsub("\n", delimiter).split(delimiter)
    negatives = []
    sum = 0
    numbers_list.each do |num|
      n = num.to_i
      raise "negative numbers not allowed #{negatives.join(',')}" if n < 0
      negatives << n if n < 0
      sum += n
    end
  
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
puts add("1\n2,3")
puts add("10\n20,30")
# 4 Support different delimiters
puts add("//;\n1;2")
puts add("//|\n1|2|3")

# 5 Calling add with a negative number will throw an exception "negative numbers not allowed <negative_number>".
puts add("-1,2,-3")
puts add("//|\n1|-2|3|-4")