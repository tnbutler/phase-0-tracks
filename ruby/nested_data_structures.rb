#creating data structure for USA with keys for states and arrays with lists of cities


usa = {
	california: ['sacaramento', 'san francisco', 'san diego'],
	texas: ['austin', 'dallas', 'houston', 'san antonio'],
	'washington' => ['seattle', 'redmond'],
	north_dakota: ['fargo'],
	florida: ['miami', 'tallahassee'],
}


puts "the capital of california is #{usa[:california][0]}"
puts "two cities in florida are: #{usa[:florida][0]} and #{usa[:florida][1]}"
puts "#{usa['washington'][0]} is the largest city in washington."
