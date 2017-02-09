# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


cards = []

# def high_card ranks, suits
  ranks.each_with_index do |rank, index|
   suits.each do |suit|
     cards.shuffle!.push [suit,rank,index]
   end
  end
# puts cards
players = []
loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  name = gets.chomp
  players.push [name]
  break if name == "play"
puts players.inspect
end

loop do
  cards.push [name]
  

end






#
# puts cards.inspect





# high_card
