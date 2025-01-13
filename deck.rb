require_relative "card"

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
      puts "3. Evaluate total monetary value"
      puts "4. Check the odds of drawing a specific card"
      puts "5. Simulate drawing cards"
      puts "6. Exit"
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
        draw_cards
      when 7   
        puts "Have a nice deck!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  private

  def add_card
    print "Enter card name: "
    name = gets.chomp
    print "Enter $value name: "
    $value = gets.chomp
    @cards << Card.new(name, $value)
    puts "card added successfully!"
  end

  def remove_card
    print "Enter card name: "
    name = gets.chomp
    @cards each {|card|
      if @cards.at(card)[:title] == name
        @cards.delete(card)
        puts "#{name} removed from deck!"
      end
    }
  end

  def list_cards
    puts "cards in the collection:"
    @cards.each do |card|
      puts card
    end
  end
end
