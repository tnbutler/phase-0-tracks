

ary = Array.new
p ary

# add 5 elements
ary.push(1,2,3,4,5)
p ary

# delete at position 2
ary.delete_at(2)
p ary

# insert element at position 2
ary.insert(2, 0)
p ary

# delete at first index
ary.shift
p ary

# includes certain item?
bool = ary.include?(2)
if bool == true
	p "Included item? boolean equals #{bool}"
else
	p "Included item? boolean equals #{bool}"
end

# new arry with items
ary2 = Array.new(3, 5)
p ary2

# add arrays together
ary3 = ary.concat(ary2)
p ary3


