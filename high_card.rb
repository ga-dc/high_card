# Use these two arrays to generate a deck of cards.
def cards_in_deck
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []

    ranks.each_with_index do |rank, index| # rank is item in array, index is value of item | attaching a index=>value to each item in first array, as it pairs with bottom array
      suits.each do |suit| # attches a each item in its array to items in first array
        deck.push({  # creating mini-objects w/ the key's and values below
          score: index, # will be how we compare the two cards
          value: rank,
          suit: suit
          })

      end
    end

    return deck.shuffle # will mix up the deck
end

  deck = cards_in_deck

  players = []

  while true # sets it to true to just start the loop?  couldn't you just use loop???
    puts "#{players.length} so far. Enter a player name, or type 'play':"
    name = gets.chomp # getter, chomp cuts off extra whitespace

    break if name == "play" # this only breaks loop if name == 'play', gets skipped over if not true
    players.push(name) # push names into players array
  end





    # deal cards
    # compare cards
    # else high card wins
