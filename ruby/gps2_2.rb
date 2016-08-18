# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps: split the string into an array of strings separated by a space, iterate through strings to create a hash with key (string) and value (quantity)
  # set default quantity = 0
  # print the list to the console
# output: hash with key/value 

# Method to add an item to a list
# input: hash of list; item name and optional quantity
# steps: add the combination of key/value to the last value of the hash
# output: updated hash of list

# Method to remove an item from the list
# input: hash of list, name of item to remove
# steps: iterate through hash until finding name of item; remove that item from the hash
# output: updated hash of list

# Method to update the quantity of an item
# input: hash of list, name of item to update, new quantity
# steps: iterate through hash until fiding name of itme, change the quantity (value)
# output: updated hash of list

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through the hash, each time printing a statement with the key (string) and value (quanitity)
# output: none (prints list)

def create_list(string_of_items)
  string_ary = string_of_items.split(" ")
  string_hash = {}
  string_ary.each { |item| string_hash[item] = 1 }
  print_grocery_list(string_hash)
  return string_hash
end

# def add_item(hash_of_list, item_name, item_quantity = 1)
#   hash_of_list[item_name] = item_quantity
#   hash_of_list
# end

# def update_quantity(hash_of_list, item_name, new_quantity)
#   hash_of_list[item_name] = new_quantity
#   hash_of_list
# end

def add_item_or_update_quantity(hash_of_list, item_name, item_quantity = 1)
  hash_of_list[item_name] = item_quantity
  hash_of_list
end

def remove_item(hash_of_list, item_name)
  hash_of_list.delete(item_name)
  hash_of_list
end

def print_grocery_list(hash_of_list)
  puts "Pick up "
  hash_of_list.each do |item, quantity|
    print "#{quantity} #{item}, "
  end
end

new_list = create_list("apples bananas grapes")
p add_item_or_update_quantity(new_list, "milk", 2)
p remove_item(new_list, "milk")
p add_item_or_update_quantity(new_list, "bananas", 10)


=begin
What did you learn about pseudocode from working on this challenge?
-I learn how to better organize it, more clearly differentiated from actual code
What are the tradeoffs of using arrays and hashes for this challenge?
-Hashes are more complex but allow for more data to be included, and more appropriate when needing a quanitity associated with an item.
What does a method return?
-It returns any data type that you specify either explicity or implicitly.
What kind of things can you pass into methods as arguments?
-Data types such as hashes, arrays, integers, floats, strings.
How can you pass information between methods?
-methods can be passed as variables to other methods.
What concepts were solidified in this challenge, and what concepts are still confusing?
-pseudocode, difference between .each and .map, how to simplify code; still confusing includes more practice with hashes, possibly other ways to passs data between methods.
=end

