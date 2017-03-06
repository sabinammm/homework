def leap_year?(year)
  year % 4 == 0 && year % 100 != 0

end

p leap_year?(2012)
p leap_year?(2015)

def leap_year_real?(year)
  (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
  # && is always evaluated first!!!
  # If you use Ruby long enough, you will discover the and and or operators.
  #These appear at first glance to be synonyms for && and ||.
  #You will then be tempted to use these English oprators in place of && and ||,
  #for the sake of improved readability. Assuming you yield to that temptation,
  #you will eventually find yourself rudely surprised that and and or don’t behave quite like their symbolic kin.
  
end

p leap_year_real?(2000)
p leap_year_real?(1900)
