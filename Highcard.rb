require

# initialize empty deck
# build a deck
# loop though ranks
# .each with index -> to pull the worth of the card
# loops suits
# push each pair into the deck
# shuffle the deck


ranks = [2, 3 , 4, 5 ,6 ,7 ,8 ,9 ,10 , "A" "J" , "Q" , "K"]

suits = ["hearts" , "spades" , "clubs" , "diamonds"]


$players = []



def build_deck(ranks , suits)


deck = []

ranks.each_with_index do |rank, index|

suits.each do |suit|

card = {

suit: suit,
rank: rank,
worth: index

}
deck << card

end
end
return deck.shuffle
end




def chooseplayers


#prompt user to enter name or choose play
# take each player and add to player array

while true do
puts "Welcome, enter name"
name = gets.chomp.downcase # working with strings
break if name == 'p' || players.length == 2
$players << name


break
end


end

chooseplayers
deck = build_deck(ranks , suits)
binding.pry
puts "fix pry"
