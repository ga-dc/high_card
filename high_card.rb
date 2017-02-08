#variables
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

#Creating a randomized deck
deck = ranks.product(suits)
deck.shuffle!(random: Random.new())
# p deck

#Players
$players = [{name:"Mike"}, {name:"Jack"}]

#Introducing the game
puts "Welcome to High Cards. There are #{$players.length} players so far. Players names are #{$players[0][:name]} and #{$players[1][:name]}. Type 'play' to start!"
  user_input = gets.chomp
  if user_input == "play"

    for player in $players
      player[:card] = deck.sample
    end

    puts "#{$players[0][:name]}'s card is #{$players[0][:card]}"
    puts "#{$players[1][:name]}'s card is #{$players[1][:card]}"

    for player in $players do
      if $players[0][:card][0].to_s == "A"
        $players[0][:card][0] = 14
      elsif $players[1][:card][0].to_s == "A"
        $players[1][:card][0] = 14
      elsif $players[0][:card][0].to_s == "J"
        $players[0][:card][0] = 11
      elsif $players[1][:card][0].to_s == "J"
        $players[1][:card][0] = 11
      elsif $players[0][:card][0].to_s == "Q"
        $players[0][:card][0] = 12
      elsif $players[1][:card][0].to_s == "Q"
        $players[1][:card][0] = 12
      elsif $players[0][:card][0].to_s == "K"
        $players[0][:card][0] = 13
      elsif $players[1][:card][0].to_s == "K"
        $players[1][:card][0] = 13
      end
    end

    if $players[0][:card][0] > $players[1][:card][0]
      puts $players[0][:card][0]
      puts "#{$players[0][:name]} has a higher card. Thus he wins."
    elsif $players[1][:card][0] > $players[0][:card][0]
      puts "#{$players[1][:name]} has a higher card. Thus he wins."
    elsif $players[0][:card][0] == $players[1][:card][0]
      puts "Both players have equal cards. It's a draw. We will give them a second chance"
          for player in $players
            player[:card] = deck.sample
          end
          puts "#{$players[0][:name]}'s new card is #{$players[0][:card]}"
          puts "#{$players[1][:name]}'s new card is #{$players[1][:card]}"
          for player in $players do
            if $players[0][:card][0].to_s == "A"
              $players[0][:card][0] = 14
            elsif $players[1][:card][0].to_s == "A"
              $players[1][:card][0] = 14
            elsif $players[0][:card][0].to_s == "J"
              $players[0][:card][0] = 11
            elsif $players[1][:card][0].to_s == "J"
              $players[1][:card][0] = 11
            elsif $players[0][:card][0].to_s == "Q"
              $players[0][:card][0] = 12
            elsif $players[1][:card][0].to_s == "Q"
              $players[1][:card][0] = 12
            elsif $players[0][:card][0].to_s == "K"
              $players[0][:card][0] = 13
            elsif $players[1][:card][0].to_s == "K"
              $players[1][:card][0] = 13
            end
          end
          if $players[0][:card][0] > $players[1][:card][0]
            puts $players[0][:card][0]
            puts "#{$players[0][:name]} has a higher card. Thus he wins."
          elsif $players[1][:card][0] > $players[0][:card][0]
            puts "#{$players[1][:name]} has a higher card. Thus he wins."
          elsif $players[0][:card][0] == $players[1][:card][0]
            puts "Both players have equal cards. It's a draw. There is no third chance!"
          end


    end

  end
