=begin 
2. Create a method called assign_grade that returns a letter grade based on a test score. 
The method would take a score value from 0-100 as a parameter.

A: 90 or above
B: 80 - 89
C: 70 - 79
D: 60 - 69
F: Below 60
=end
#score = (1..100).to_a

#puts score

def assign_grade(score)
  if score >= 90 
    "A"
  elsif score >= 80 
    "B"
  elsif score >= 70 
    "C"
  elsif  score >= 60 
    "D"
  else 
    "F"
  end
end

puts "Student Susi receives grade #{assign_grade(55)}."

puts "Student Betty receives grade #{assign_grade(89)}."

puts "Student Adam receives grade #{assign_grade(75)}."

puts "The study group Rubyista Megalomaniacs receives grade #{assign_grade(101)}."