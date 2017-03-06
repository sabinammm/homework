numbers = [1, 2, 3, 4, 5, 6]
numbers = numbers.select { |a| a.even?}
numbers.reverse!
p numbers