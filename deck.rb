require "minitest"
require_relative "card"

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

class Deck
  def initialize
    @cards = []
  end

  def run
    loop do
      puts "\n"
      puts "Time to build a new deck!"
      puts "1. Add card"
      puts "2. remove card"
      puts "3. list cards"
      puts "4. Evaluate total monetary value"
      puts "5. Check the odds of drawing a specific card"
      puts "6. shuffle deck"
      puts "7. Simulate drawing cards"
      puts "8. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_card
      when 2
        remove_card
      when 3
        list_cards
      when 4
        evaluate_deck
      when 5
        check_odds
      when 6
        shuffle_deck
      when 7
        draw_cards
      when 8   
        puts "Have a nice deck!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  #private

  def add_card
    print "Enter card name: "
    name = gets.chomp.to_s
    print "Enter $value name: "
    $value = gets.chomp.to_f
    print "Enter card quantity:"
    quantity = gets.chomp.to_i
    quantity.times do
      @cards << Card.new(name, $value)
    end
    puts "card(s) added successfully!"
  end

  def remove_card
    puts "\n"
      puts "1. Remove a single card"
      puts "2. Remove each card of a specific name"
      choice = gets.chomp.to_i
      case choice
      when 1
        list_cards
        puts "\n"
        print "Enter card position: "
        position = gets.chomp.to_i - 1
        puts "One copy of #{@cards.at(position)} has been removed!"
        @cards.delete_at(position)
      when 2
        print "Enter card name: "
        name = gets.chomp.downcase
        @cards.each_with_index {|card, count|
          if card.match_name.downcase == name
            @cards.delete(card)
          end
          puts "#{name} removed from the deck #{count} times!"
        }
        else
          puts "Invalid option. Please try again."
        end
      end
  end

  def list_cards
    puts "cards in the collection:"
    @cards.each_with_index do |card, count|
      puts "#{count+1}: #{card.to_s} is worth #{card.show_value}"
    end
  end

  def evaluate_deck
    sum = 0
    @cards.each {|card|
    sum = sum + card.show_value
    }
    puts "Youre deck is worth #{sum.round(3)}!"
  end

  def check_odds
    print "Enter card name: "
    name = gets.chomp
    match = 0
    @cards.each {|card|
      if card.match_name == name
        match = match + 1
      end
    }
    result = match.percent_of @cards.count
    puts "#{name} has a #{result.round(3)} odds of being drawn!"
  end

  def shuffle_deck
    @cards = @cards.shuffle
    puts "Your deck has been shuffled."
  end

  def draw_cards
    hand = []
    hand << @cards.first
    @cards.delete_at(0)
    puts "\n"
    puts "Your hand includes: "
    puts hand
    puts "\n"
    loop do
      puts "1. Draw another card?"
      puts "2. Shuffle deck"
      puts "3. Return hand to deck"
      choice = gets.chomp.to_i
      case choice
      when 1
        hand << @cards.first
        @cards.delete_at(0)
        puts "\n"
        puts "Your hand includes: "
        puts hand
      when 2
        shuffle_deck
      when 3
        @cards << hand
        hand = []
        @cards = @cards.flatten
        puts "\n"
        puts "Your hand includes: "
        puts hand
        puts "The deck has #{@cards.count} cards in it."
        break
      end
      else
        puts "Invalid option. Please try again."
      end
    end
  end

end
