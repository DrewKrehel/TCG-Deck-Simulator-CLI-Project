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
# Draw Cards
x = [Card.new("steve", 4.2), Card.new("Drew", 6.3), Card.new("Race", 10.5), Card.new("Kyle", 5), Card.new("Drew", 6.2), Card.new("Drew", 6.3), Card.new("Drew", 6.3),]
y= []
r = x
t = x

puts "the top card is #{x.first}"
puts "\n"
3.times do
  y << r.first
  r.delete_at(0)
end
puts "Your hand includes #{y}"
puts "the top card is #{t.first}"
puts "\n"
r << y
y = []
puts "Your hand includes #{y}"
puts t
