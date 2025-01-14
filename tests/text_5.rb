
#better remove build
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
      @cards.delete_at(position)
    when 2
      print "Enter card name: "
      name = gets.chomp
      @cards.each {|card|
        if cards.match_name == name
          @cards.delete(card)
          puts "#{name} removed from deck!"
        end
      }
    end
end
