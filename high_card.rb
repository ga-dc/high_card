# Use these two arrays to generate a deck of cards.


puts "What is your name?"
name = gets.chomp
players = []
players_with_cards=[]

while name != "play"
  players.push(name)
  num_players = players.length
  puts "#{num_players} players so far. Enter a player name, or type \'play\':"
  name = gets.chomp


  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []


  ranks.each do |rank|
    suits.each do |suit|
      deck.push "#{rank} #{suit}"
    end
  end

  deck.shuffle!
  players.each do |player|

    random_card = deck.pop
    puts player + " " + random_card

  end

end
