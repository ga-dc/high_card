# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)

class Player
	attr_accessor :name
	def initialize(name, cards = [])
		@name = name
		@cards = cards
	end
	def add
		players << self
	end
end

sam = Player.new("Sam")

p deck.shuffle
# puts  "#{players.length} players so far. Enter a player name, or type 'play' "
# user_input = gets.chomp
# if user_input == 'play'
# 	deck.shuffle
# 	players.map{|x| x}
# else Player.new(user_input)
# end

