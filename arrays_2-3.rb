words = ["one", "two", "three", "four", "five"]
words = words.values_at(* words.each_index.select {|i| i.even?}) # Die Methode .with_index gleich funktioniert wie die 
# Kombination von .values_at (* .each_index). Siehe "splat operator".
words = words.collect { |x| x.capitalize + "  <3"}

p words