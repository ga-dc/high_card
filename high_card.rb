# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = ranks.product(suits).shuffle!

class Player
    attr_reader :card, :name
    @@player_count = []
    def initialize player_name
        @name = player_name
        @card = []
        @@player_count.push({name: "#{@name}"})
    end

    def self.total_players
        "#{@@player_count}"
    end

    def deal_cards deck
        @card = deck.sample
    end
end

class Game < Player
    attr_reader :players, :deck

    def initialize deck
        @deck = deck
        @high_card = nil
        @winner = nil
        @players = []
    end

    def add_player player
        @players.push(player)
    end

    def play
        @players.each do |player|
            player.deal_cards(@deck)
        end
    end

    def high_card
        @deck.each do |card|
            case card[0]
            when "J"
                card[0] = 11
            when "Q"
                card[0] = 12
            when "K"
                card[0] = 13
            when "A"
                card[0] = 14
            else
                card[0] = card[0]
            end
        end
    end

    def winner
        if @players[0].card[0].to_i > @players[1].card[0].to_i
            puts "#{@players[0][:name]} is the winner"
        elsif @players[0].card[0].to_i < @players[1].card[0].to_i
            puts "#{@players[1][:name]} is the winner"
        else
            puts "It's a tie"
        end
    end
end

game = Game.new(deck)
puts "Let's Play High Card!"
puts "This game needs a minimum of two players"
puts "Enter player 1 name"
player1_name = gets.chomp
player1 = Player.new(player1_name)
puts "Enter player 2 name"
player2_name = gets.chomp
player2 = Player.new(player2_name)
game.add_player player1
game.add_player player2
puts "Let's play"
game.play
puts "#{player1_name} has #{player1.card}"
puts "#{player2_name} has #{player2.card}"
game.high_card
game.winner

