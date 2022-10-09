# ELEMENT ASSIGNMENT
# String Element Assignment
str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'
str # => "Joe's Favorite Color Is Blue"

# Array Element Assignment
arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1
arr # => [2, 3, 4, 5, 6]

# Hash Element Assignment
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'
hsh# => { :apple => "Fruit", :carrot => "Vegetable", :pear => "Fruit", :broccoli => "Vegetable" }

