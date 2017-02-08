# 201702071755L   EL MARTES   GIRO
# Use these two arrays to generate a deck of cards.

players = []
deck    = []
ranks   = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits   = [ "hearts", "spades", "clubs", "diamonds" ]


deck = ranks.product(suits)
        # [["A", "hearts"], ["A", "spades"], ["A", "clubs"], ["A", "diamonds"], [2, "hearts"], [2, "spades"], [2, "clubs"], [2, "diamonds"], [3, "hearts"], [3, "spades"], [3, "clubs"], [

# puts "_"
# puts "puts deck.shuffle"
# puts "LOOKS LIKE THIS"
# puts "SEPARATE LF CRLF FOR EACH HASH VALUE "
# puts deck.shuffle

puts "_"
puts "p deck.shuffle"
puts "LOOKS LIKE THIS: "
puts "CREATES EACH deck AS ITS OWN HASH"
puts "WITH FAT ARROW THING, WHITE TXT IN REPL THEN FAT ARROW => GREEN TXT"
p deck.shuffle



"{n} players so far. Enter a player name, or type 'play':"
Should look like this: [{name:'Jesse'}, {name:'Jane'}]


Arrays
Consider:
users = ["Alice", "Bob", "Carol"]
What do each of the following do? users.length users.push("David") users[0] users[2] users.join(" ") users.join(", ") users.join(" and ")
What are the two ways of adding items to the end of an array of unknown length in Ruby?
.push and <<

Hashes
Hashes are like Javascript Object Literals, but with a somewhat different syntax.
Consider:
user = {
  name: "Alice",
  age: 30,
  skills: ["development", "public speaking", "physics"]
}


# require "pry"
# class Player
#   def set_name_to(some_string)
#     @name = some_string
#   end
#   def get_name
#     return @name
#   end
#   def greet
#     puts "Hi! My name is #{@name}!"
#   end
# end
# binding.pry
# puts "end of file"
#
#
# class Player
#
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#   end
#
#   def full_name
#     return "#{@firstname.capitalize} #{@lastname.capitalize}"
#   end
#
# end
