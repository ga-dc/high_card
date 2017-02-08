1	class Card# Use these two arrays to generate a deck of cards.
2
3
4	ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
5	suits = [ "hearts", "spades", "clubs", "diamonds" ]
6
7	attr_accessor :rank, :suit
8
9	def initialize
10	  Card.rank = RANKS
11	  Card.suit = SUITS
12	end
13	end
14
15
16	
17	class Deck
18	  attr_accessor :cards
19	  def initialize
20	    self.cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
21
22	end
23	end
24
25	class Array
26	  def shuffle!
27
28	        n = length
29
30	        for i in 0...n
31
32	        r = rand(n-i)+i
33	      end
34	    def shuffle
35	    end
36	  end
37	end
38
39
40	response = ""
41	players = []
42	while response != "play"
43	  puts "#{players.count} players so far. Enter a player name, or type 'play':"
44	  response = gets.chomp
45	  players << response unless response.empty?
46
47	end
