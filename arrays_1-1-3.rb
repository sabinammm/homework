numbers = [1, 2, 3, 4, 5, 6]
#numbers.delete(1)
#numbers.delete(3)
#numbers.delete(5)
numbers = numbers.select {|number| number.even?}
p numbers
