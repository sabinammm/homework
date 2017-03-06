words = ["one", "two", "three", "four", "five"]
words = words.select.with_index {|word, i| i.even?}
words = words.collect { |x| x.capitalize}
words.map!.with_index {|word, index| word + " <3"*(index*2+1)}
#words.collect!.with_index {|word, i| } 
 # a = " <3"
  #a + 1
  #if i == 0
   # p word + a
  #if i == 1
   # p word + a*3
  #if i = 2
  #  p word + a*5
  #end2
#end

p words