words = ["one", "two", "three", "four", "five"]
words.delete_at(1)
words.delete_at(3)

#words = words.select.with_index { |word, ix| ix.even? }
#But this way is super confusiong.
p words
