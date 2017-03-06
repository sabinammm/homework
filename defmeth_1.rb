def greet_1(name)
  greeting = ["Hello", "Hi", "Ohai", "ZOMG"]
  greeting.sample + " " + name + "!"
  #"Hello #{name}!"
end

puts greet_1("Ada")

def greet_2(name)
  greeting = ["Hello", "Hi", "Ohai", "ZOMG"]
  "#{greeting.sample} #{name}!"
end

puts greet_2("Ada")

def greet_3(name)
  greeting = ["Hello", "Hi", "Ohai", "ZOMG"].shuffle
  "#{greeting.first} #{name}!"
end

puts greet_3("Ada")
