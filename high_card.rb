require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

the_deck = ranks.product(suits)

class Game
	attr_accessor :players
	def initialize(deck)
		@deck = deck
		@players = []
	end
	def add_players(user)
		@players.push(user)
	end
	def deal_players
		@players.each do |x|
			x.deal(@deck)
		end
	end
	def clear_cards
		@players.each do |x|
			x.new_cards
		end
	end
	def rank_the_deck
		@deck.each do |y|
			case y[0]
			when "A"
				y.push(14)
			when "K"
				y.push(12)
			when "Q"
				y.push(12)
			when "J"
				y.push(11)
			else
				ranker = y[0]
				y.push(ranker)
			end 
		end
		@deck.shuffle!
	end
	def war
		if @players[0].card[2] == @players[1].card[2]
			puts "It's a tie between #{@players[0].name} and #{@players[1].name}"
			puts "play again? y/n?"
			yn = gets.chomp!
			if yn == "y"
				clear_cards
				deal_players
				war
			else
				puts "Game Over"
			end
		elsif @players[0].card[2] < @players[1].card[2]
			puts "The winner is #{@players[0].name} with a #{@players[0].card[0]} of #{@players[0].card[1]}"
		else
			puts "The winner is #{@players[1].name} with a #{@players[1].card[0]} of #{@players[1].card[1]}"
		end
		puts "Do you want to play again?"
		puts "y/n?"
		again = gets.chomp!
		if again == "y"
			clear_cards
			puts "press Enter to deal"
			gets
			deal_players
			puts "Cards dealt...Ready?"
			puts "press Enter to see who wins"
			gets
			war
		else
			puts "Game Over"
		end
	end

end

class Player
	attr_accessor :card, :name
	def initialize()
		@name = gets.chomp.capitalize!
		@card = []
	end
	def deal(deck)
		@card = deck.sample
	end
	def new_cards
		@card = []
	end
end
game = Game.new(the_deck)	
puts "wlecome to High Card, Ready to play?"
puts "#{game.players.length} players so far. Press enter to continue"
gets
puts "Whats your name player 1 ?"
player1 = Player.new
game.add_players(player1)
puts "#{game.players.length} players so far. Need one more to play"
puts "And whats your name player 2 ?"
player2 = Player.new
game.add_players(player2)

puts "press enter to deal"
gets

game.deal_players
game.rank_the_deck

puts "Cards dealt...Ready?"
puts "press enter to see who wins"
gets
game.war



binding.pry

