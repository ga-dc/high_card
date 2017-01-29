# Use these two arrays to generate a deck of cards.
# require 'pry'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

players = []

puts "Enter a player name, or type 'play':"
name = gets.chomp  #gets rid of the automatic /n at the end

# n = 0

until (name == "play")
  players.push(name)
  puts "#{players.length} Players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  # n =+ 1
  # when a user types in "play", this also gets pushed to the players array...
end



#create deck of cards
ranks.each_with_index {|rank, index| #cards need a value... syntax each_with_index {|item, index|}
  # puts rank
  # puts index

  suits.each do |suit|
    card = [rank, suit].inspect
    deck.push(card)

end
}

topcard = deck.shuffle.pop(players.length)


puts topcard


highcard = topcard.max

puts "#{highcard} loses!"
#this just told me K won over A.... BUG.. change declaration to highcard loses! work around





#inspect changed the way the output looked in terminal. each card was returning on 2 lines and not in brackets.  same value, but diff look.  reference on line 11

# deck = ("#{rank}, #{suit}").to_a  doesn't work...
#1: take out the paren and .to_a.  replace with straight brackets
#2: the quotes on the outside are making the whole thing a string rather then each a string (like in the example)
#3: taking the quotes out comments out the {} because of the hashtag.  can delete #{} for both.
#4: don't need quotes on either of them because they are already strings in the array where they're first defined.
