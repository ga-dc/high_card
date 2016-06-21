require("pry")

# Use these two arrays to generate a deck of cards.
# ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
# suits = [ "hearts", "spades", "clubs", "diamonds" ]

class Game
    attr_reader :deck
    attr_accessor :players

    def initialize
        @ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
        @suits = [ "hearts", "spades", "clubs", "diamonds" ]
        @deck = []
        @players = []
    end

    def shuffle
        @suits.each do |suit|
            @ranks.each_with_index do |rank, index|
                @deck << {rank: rank, suit: suit, score: index}
            end
        end
        @deck = @deck.shuffle
        return @deck
    end

    def menu
        puts "Welcome to the main menu! Enter 'd' to deal a hand, 'p' to add a new player, or 'e' to exit:"
        menu_answer = gets.to_s.chomp
        while menu_answer != "d" && menu_answer != "p" && menu_answer != "e"
            puts "You must enter 'd' to deal a hand, 'p' to add a new player, or 'e' to exit:"
            menu_answer = gets.to_s.chomp
        end
        if menu_answer == "d"
            self.deal
        elsif menu_answer == "p"
            self.add_player
        elsif menu_answer == "e"
            return
        end
    end

    def add_player
        if @players.length < 2
            puts "Please enter your name to start:"
            player1 = gets.to_s.chomp
            @players.push(player1)
            puts "#{player1} added!"
            puts "Now enter the name of the second player:"
            player2 = gets.to_s.chomp
            @players.push(player2)
            puts "#{player2} added!"
        elsif @players.length == 10
            puts "Sorry, there is a 10-player max!"
            return
        elsif @players.length >= 2
            puts "Do you want to add another player? Enter y or n:"
            player_answer = gets.to_s.chomp
            if player_answer == "y"
                puts "Please enter the name of the new player:"
                new_player = gets.to_s.chomp
                @players.push(new_player)
                puts "#{new_player} added!"
            else
                puts "OK then"
                self.menu
            end
        end
        self.menu
    end

    def deal
        puts `clear`
        if @deck.length < @players.length
            puts "There aren't enough cards! Enter r to reshuffle or e to exit the game:"
            reshuffle_choice = gets.to_s.chomp
            while reshuffle_choice != "r" && reshuffle_choice != "e"
                puts "You must enter r to reshuffle or e to exit the game:"
                reshuffle_choice = gets.to_s.chomp
            end
            if reshuffle_choice == "e"
                return
            elsif reshuffle_choice == "r"
                @deck = []
                self.shuffle
            end
        end
        @hand = []
        @players.each do |player|
            playercard = @deck.shift
            sleep 0.4
            puts "#{player} has the #{playercard[:rank]} of #{playercard[:suit]}!"
            @hand << {player: player, card: playercard}
        end
        self.winner @hand
    end

    def winner array
        winners = []
        array.sort_by! {|k| k[:card][:score]}.reverse!.each do |key|
            if key[:card][:score] == array[0][:card][:score]
                winners << key[:player]
            else
                next
            end
        end
        if winners.length > 1
            20.times do
                sleep 0.1
                puts "."
            end
            sleep 0.5
            puts "#{winners.join(", ")} are tied!"
        else
            20.times do
                sleep 0.1
                puts "."
            end
            sleep 0.5
            puts "#{array.max_by{|x| x[:card][:score]}[:player]} wins!"
        end
        puts "Enter d to deal again or m to return to menu:"
        post_hand_choice = gets.to_s.chomp
        while post_hand_choice != "d" && post_hand_choice != "m"
            puts "You must enter 'd' to deal again or m to return to menu:"
            post_hand_choice = gets.to_s.chomp
        end
        if post_hand_choice == 'm'
            self.menu
        elsif post_hand_choice == 'd'
            self.deal
        end
    end

end

puts "Do you want to play? Enter y or n:"
play_answer = gets.to_s.chomp
if play_answer == "y"
    newgame = Game.new
    newgame.shuffle
    newgame.add_player
    newgame.menu
else
    puts "fine then"
end
