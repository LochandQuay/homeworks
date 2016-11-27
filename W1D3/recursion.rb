# EXERCISE 1 - 'sum_to'

def sum_to(n)
  return nil if n <= 0
  return 1 if n == 1

  n + sum_to(n - 1)
end

puts "EXERCISE 1 TEST CASES"
puts "\nsum_to(5)  # => returns 15"
p sum_to(5) == 15
puts "\nsum_to(1)  # => returns 1"
p sum_to(1) == 1
puts "\nsum_to(9)  # => returns 45"
p sum_to(9) == 45
puts "\nsum_to(-8)  # => returns nil"
p sum_to(-8) == nil
puts "~~~~~~~~~~~~~\n\n"


# EXERCISE 2 - 'add_numbers'

def add_numbers(nums_array = nil)
  return nil if nums_array == nil || nums_array.empty?
  return nums_array.first if nums_array.length == 1

  nums_array[0] + add_numbers(nums_array[1..-1])
end

puts "EXERCISE 2 TEST CASES"
puts "\nadd_numbers([1,2,3,4]) # => returns 10"
p add_numbers([1, 2, 3, 4]) == 10
puts "\nadd_numbers([3]) # => returns 3"
p add_numbers([3]) == 3
puts "\nadd_numbers([-80,34,7]) # => returns -39"
p add_numbers([-80, 34, 7]) == -39
puts "\nadd_numbers() # => returns nil"
p add_numbers() == nil
puts "~~~~~~~~~~~~~\n\n"

# EXERCISE 3 - Gamma Function

def gamma_fnc(n)
  return nil if n == 0
  return 1 if n == (1 || 2)

  (n - 1) * gamma_fnc(n - 1)
end


puts "EXERCISE 3 TEST CASES"
puts "\ngamma_fnc(0)  # => returns nil"
p gamma_fnc(0) == nil
puts "\ngamma_fnc(1)  # => returns 1"
p gamma_fnc(1) == 1
puts "\ngamma_fnc(4)  # => returns 6"
p gamma_fnc(4) == 6
puts "\ngamma_fnc(8)  # => returns 5040"
p gamma_fnc(8) == 5040
puts "~~~~~~~~~~~~~"
