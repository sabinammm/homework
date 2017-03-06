words = ["one", "two", "three", "four", "five"]
words = words.values_at(* words.each_index.select {|i| i.even?}) # Das * ist ein splat operator. Bei Gelegenheit suchen.
words = words.collect { |x| x.capitalize}

p words