b = (1..50).to_a
#b = Array(1..50)
#b = 1.step(50).to_a
b.map! {|number| number + 3}
#b = b.keep_if {|number| number % 3 == 0}
b.select {|number| number % 3 == 0} #select is not permanent, keep_if is permanent unless
# I set b = b.select
p b