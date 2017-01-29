# flavors.each do |flavor|
#   toppings.each do |topping|
#     puts "#{flavor} & #{topping}"
#   end
# end
# flavors = [ "vanilla", "chocolate", "strawberry", "butter pecan", "cookies and cream", "rainbow" ]
# toppings = [ "gummi bears", "hot fudge", "butterscotch", "rainbow sprinkles", "chocolate sprinkles" ]
# combos = []
#
# flavors.each do |flavor|
#   toppings.each do |topping|
#     combos.push([flavor, topping])
#     puts combos
#   end
# end

# artists = [ "Leonardo", "Donatello", "Raphael", "Michelangelo" ]
# ninja_turtles = []
# artists.each do |artist|
#   ninja_turtles.push( artist )
#   puts ninja_turtles
# end


# players = []
# names = nil
# until names == "play" do
#   puts "Please enter at least two player names, then type 'play' to begin"
#   names = gets.chomp
#
#   puts "#{ names } has been added to the game"
#
#   players.push (names)
# end
# players.pop
# puts players

players = []
name = nil
puts "{players.length} players in the game so far. Enter your name or type 'play':"
name = gets.chomp
players.push(name)
