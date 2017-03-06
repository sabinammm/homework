words = ["one", "two", "three", "four", "five"]
words = words.values_at(* words.each_index.select {|i| i.even?})

p words