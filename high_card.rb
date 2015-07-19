def high_card
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  players = []

  #create shuffled deck
  ranks.each do |rank|
    suits.each do |suit|
      deck.push [rank, suit]
    end
  end
  deck.shuffle! # p deck.shuffle! === puts deck.shuffle!.inspect

  #get names of players
  begin
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets.chomp.upcase
    if input == "PLAY"
      p players
      deal_card
    else
      players.push(input)
    end
  end while (input != "PLAY")
end

def deal_card
  puts "do something"
end

high_card
