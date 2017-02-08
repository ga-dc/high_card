require "pry"
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ,"A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
game_board=[]

ranks.product(suits).each do |combo|
  deck << combo
end

class Player
  attr_accessor :name, :card
  @@players = []

  def initialize(name)
    @name = name
    @card = nil
    @@players << self
  end
  def self.all
    return @@players
  end
  def set_card(card)
    @card = card
  end
  def get_card
    return @card
  end
  def get_name
    return @name
  end

end
game_start = false
while game_start == false
  puts "#{Player.all.length} player(s) so far. Enter a player name or type 'play':"
  response = gets.chomp.to_s
  if response == "play"
    game_start = true
  else
    Player.new(response)
  end
end
deck.shuffle!
Player.all.each_with_index do |playa_play,i|
  playa_play.set_card(deck[i])
  game_board << ranks.index(deck[i][0])
end
# puts "Winner(s): #{Player.all.find_all{ |playa_play| ranks.index(playa_play.get_card[0]) == game_board.max}.map{|playa_play| playa_play.get_name} }" #this is the original print

until Player.all.find_all{ |playa_play| ranks.index(playa_play.get_card[0]) == game_board.max}.length == 1 do #bonus part two
  deck.shuffle!
  Player.all.each_with_index do |playa_play,i|
    playa_play.set_card(deck[i])
    game_board << ranks.index(deck[i][0])
  end
end

if Player.all.find_all{ |playa_play| ranks.index(playa_play.get_card[0]) == game_board.max}.length == 1 #if to output the bonus response
  puts "The winner is #{Player.all.find_all{ |playa_play| ranks.index(playa_play.get_card[0]) == game_board.max}.map{|playa_play| playa_play.get_name}.join("") }"
else
  puts "It's a tie between #{Player.all.find_all{ |playa_play| ranks.index(playa_play.get_card[0]) == game_board.max}.map{|playa_play| playa_play.get_name}.join(", ")}!"
end

binding.pry
