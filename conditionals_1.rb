=begin
1. What number's bigger? Write a method named bigger_number that:
- takes 2 arguments, both numbers.
- returns whichever number is the greater (higher) number.
- Call that function 2 times with different number pairs, 
and log the output to make sure it works (e.g. "The greater 
number of 5 and 10 is 10.").
=end

#array = [5, 10]
#number_1 = array[0]
#number_2 = array[1]

def bigger_number(number_1, number_2)

  if number_1 > number_2 #== true
    "The greater number of #{number_1} and #{number_2} is #{number_1}."
  elsif number_2 > number_1 #== true
    "The greater number of #{number_1} and #{number_2} is #{number_2}."
  end

end

puts bigger_number(5, 10)

puts bigger_number(76, 9)