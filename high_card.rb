              # 201702071755L   EL MARTES   GIRO
              # Use these two arrays to generate a deck of cards.

players = []
players = ['annie', 'bobbie', 'charlie']
deck    = []
ranks   = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits   = [ "hearts", "spades", "clubs", "diamonds" ]
card = []
play = false
deck = ranks.product(suits).shuffle
                # p deck.shuffle
p "our deck looks like this   ---> "
p deck
                # Thu Feb 09 08:28:16 ~/wdi/homework/due_201702090900L/high_card (master *) # $ ruby high_card.rb # "our deck looks like this   ---> " # [[8, "hearts"], [5, "clubs"], [6, "diamonds"], ["A", "hearts"], [8, "clubs"], [2, "hearts"], [7, "diamonds"], [7, "clubs"], [6, "spades"], [9, "spades"], [2, "diamonds"], [2, "clubs"], [9, "hearts"], [4, "hearts"], ["Q", "hearts"], [6, "hearts"], ["A", "clubs"], [8, "diamonds"], [3, "clubs"], ["J", "diamonds"], [4, "clubs"], [7, "spades"], ["J", "spades"], [4, "spades"], [10, "hearts"], ["K", "hearts"], ["Q", "clubs"], [9, "diamonds"], [6, "clubs"], ["K", "clubs"], [10, "diamonds"], [10, "spades"], ["Q", "spades"], ["Q", "diamonds"], [3, "hearts"], [3, "diamonds"], [10, "clubs"], ["J", "hearts"], [2, "spades"], [7, "hearts"], ["K", "diamonds"], ["A", "diamonds"], [3, "spades"], [5, "hearts"], [9, "clubs"], [4, "diamonds"], [5, "diamonds"], ["K", "spades"], [8, "spades"], ["J", "clubs"], ["A", "spades"], [5, "spades"]] # LETS PLAY POKER
    puts ''
    puts 'LETS PLAY'
    puts "we have --->      #{players.count}    <---   players so far."
    p players
    puts ''
    puts "enter a player name, or type 'play':"
    player_or_play = gets.chomp.to_s


    def add_players(players, cards, index)
      puts "we have #{players.length} players."
      puts "enter a player name, or type 'play':"
         user_input = gets.chomp.to_s
      if user_input != "play"
        players.push({name: user_input})
        puts "meet your fellow players #{players}"
      else
        until index == players.length
          players.each do |deal|
                           deal[:card] = deck.pop
            index += 1
          end
      end
              winner = players.max_by{|max| max[:card]}
      puts "#{winner[:name]} wins! with #{winner[:card]}"
      # rank_cards(players)
    end
    end

    puts card
