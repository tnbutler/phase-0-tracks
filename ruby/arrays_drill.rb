def build_array(x, y, z)
	array = Array.new
	array.push(x, y, z)
	return array
end

def add_to_array(array, elem)
	array.push(elem)
end

# initialize empty array
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

# call build_array method
ary4 = build_array(55, 66, 77)
p ary4

# add_to_array test calls
ary5 = add_to_array(ary4, 88)
p ary5

p add_to_array(ary5, 99)
