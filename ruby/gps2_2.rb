# Release 0:
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a hash which will be called grocery_list
  # create a key and a value, which will be the item and quantity respectively
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item, and optional quantity
# steps:
# define method called add_item with 2 arguments, one being the item, the other being the quantity
  # hash[item] = quantity
  # puts hash
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps:
  # hash.delete(item)
  # puts hash
# output: hash

# Method to update the quantity of an item
# input: list, item name, and optional quantity
# steps:
  # set a new variable equal to the new quantity
  # hash[item] = new variable
  # puts hash
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # use EACH method for the hash
  # puts "You need to buy #{quantity} of #{item}."
  # END
# output: string

# Release 1:
def create_list(item)
  grocery_list = {}
  item.split(" ").each {|item_name| grocery_list[item_name] = 1}
  p grocery_list
end

list_name = create_list("Lemonade Tomatoes Onions")

def add_modify_item(list, item, quantity)
  list[item] = quantity
  p list
end

# add_modify_item(list_name, "Apple", 2)

def remove_item(list, item)
  list.delete(item)
  p list
end
# remove_item(list_name, "Apple")

# def update_quantity(list, item, quantity)
#   list[item] = quantity
# p list
# end
# add_modify_item(list_name, "Onions", 3)

def pretty(list)
  list.each {|item, quantity| p "You need to buy #{quantity} of #{item}."}
end
# pretty(list_name)

# Release 2:
new_list = create_list("Bread Ham Sugar Grape")
add_modify_item(new_list, "Lemonade", 2)
add_modify_item(new_list, "Tomatoes", 3)
add_modify_item(new_list, "Onions", 1)
add_modify_item(new_list, "Ice Cream", 4)
remove_item(new_list, "Lemonade")
add_modify_item(new_list, "Ice Cream", 1)
pretty(new_list)

# Release 4:
# What did you learn about pseudocode from working on this challenge?
# pseudocode is like the outline of the challenge. Make sure it is well written. As long as you follow it, it will guide your codes.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Hashes will give you everything you'll need for this challenge. But if you decided to use arrays, you'll have to use multiple to defind the list, item, and quantity. Therefore, using arrays is not efficient.

# What does a method return?
# Method returns to the respecteive commands the user want it to. In this case, the hash.

# What kind of things can you pass into methods as arguments?
# Everything (strings, integers, floats, values, etc).

# How can you pass information between methods?
# As arguments.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# By defining create_list to another value, it will be able to link all of the defined methods together.