class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

puts 4.percent_of 7


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
# Check odds
x = [Card.new("steve", 4.2), Card.new("Drew", 6.3), Card.new("Race", 10.5), Card.new("Kyle", 5), Card.new("Drew", 6.2), Card.new("Drew", 6.3), Card.new("Drew", 6.3),]
sum = 0
match = 0

x.each {|card|
  if card.match_name == "Drew"
    match = match + 1
  end
}
puts match
puts match.percent_of x.count

#some rANDdom changes
