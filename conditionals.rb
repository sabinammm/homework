#! /location of ruby execute file

fruits = ["apple", "pear", "banana"]

#Select all fruits with an "e"
#So, first chop up each element of the array and create three new arrays.
#Second, check each element of each new array to see if it is an "e" or not.
#Third, print out the words that contain an "e".

fruits_chopped = fruits.select {|fruit| fruit.to_a}

puts fruits_chopped