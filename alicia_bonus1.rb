a = [2, 3, 4] 
a.unshift(1)
#a.insert(0, 1)
a << 5
#a.push(5)
a.delete_at(2)
#a.delete(3)
#a.delete_if {|n| n==3}
p a