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

  private

  def add_card
    print "Enter card name: "
    name = gets.chomp.to_s
    print "Enter $value name: "
    $value = gets.chomp.to_f
    @cards << Card.new(name, $value)
    puts "card added successfully!"
  end

  def remove_card
    print "Enter card name: "
    name = gets.chomp
    @cards.each {|card|
      if cards.match_name == name
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

  def evaluate_deck
    sum = 0
    @cards.each {|card|
    sum = sum + card.show_value
    }
    puts sum
  end

  def check_odds
    print "Enter card name: "
    name = gets.chomp
    match = 0
    @cards.each {|card|
      if card.match_name == "Drew"
        match = match + 1
      end
    }
    puts "#{name} has a #{match.percent_of x.count} odds of being drawn!"
  end

  def shuffle_deck
    @cards.shuffle
  end

  def draw_cards
    hand = []
    hand << @cards.first
    @cards.delete_at(0)
    puts "\n"
    puts "Your hand includes: "
    puts hand
    puts "\n"
    puts "1. Draw another card?"
    puts "2. Return hand to deck"
    choice = gets.chomp.to_i
    case choice
    when 1
      hand << @cards.first
      @cards.delete_at(0)
      puts "\n"
      puts "Your hand includes: "
      puts hand
    when 2
      @cards << hand
      hand = []
      puts "\n"
      puts "Your hand includes: "
      puts hand
    end
  end

end
