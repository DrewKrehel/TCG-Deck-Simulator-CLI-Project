require 'minitest/autorun'

class Card
  attr_accessor :title, :value

  def initialize(title, value)
    @title = title
    @value = value
  end

  def match_name
    "#{title}"
  end

  def show_value
    return @value
  end

  def to_s
    "#{@title} is worth #{@value}"
  end
end
# Show Value
x = [Card.new("steve", 4.2), Card.new("Drew", 6.3), Card.new("Race", 10.5), Card.new("Kyle", 5), Card.new("Drew", 6.2), Card.new("Drew", 6.3), Card.new("Drew", 6.3),]
sum = 0
match = 0
puts x.count
x.each {|card|
  sum = sum + card.show_value
}
puts sum
# Remove Card
#x.each {|y|
# if y.match_name == "Drew"
#    x.delete(y)
#    puts "removed from deck!"
#  end
#}
#pp x

# Remove 2 - by position

puts "\n"
print "Enter card position: "
position = gets.chomp.to_i - 1
x.delete_at(position)
puts x
