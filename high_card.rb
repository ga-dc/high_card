require 'pry'

# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# suits = [ "hearts", "spades", "clubs", "diamonds" ]
# deck = []

# suits.each do |suit|
#     ranks.each_with_index do |rank|
#     deck << [suit, rank]
#     deck.shuffle!
#     end
# end

# players_names = []

# name = gets.chomp

# class Player
#     def initialize(name)
#         @name = name
#     end

#     def addPlayer
#         @name = gets.chomp
#         players_names << self
#     end
# end

# mike = Player.new "Mike"


class Person
    attr_accessor :age, :name #symbols are faster
    @@all = []
    @@number_of_people = 0
    def initialize age, name
        @age = age # instance variable, accessible within the instance of mike
        @name = name
        @@all << self # refers to the current instance
        @@number_of_people += 1
    end
    def self.all # self allows us to define the method on the class
        @@all
    end
    def can_vote? # instance method
        @age > 17
    end

    def self.older p1, p2
        p1.age > p2.age ? p1.name : p2.name # turnary operator
    end

    def self.count # class method
        @@all.length
    end
    # attr_accessor takes care of all of this
    # def name
    #     @name
    # end
    # def age
    #     @age
    # end
    # def name
    #     @name
    # end
    # def name= new_name
    #     @name = new_name
    # end
    # def age= new_age
    #     @age = new_age
    # end
    def introduce
        "Hello! My name is #{@name}. I am #{@age} years old."
    end
end

mike = Person.new 40, "Mike"
steve = Person.new 17, "Steve"
binding.pry
puts "Finished!"

# my pseudocode
# create cards arrays with two values; suit and rank
# for each card
# apply suit then ranks
# i.e. hearts then rank
# until there are no more suits