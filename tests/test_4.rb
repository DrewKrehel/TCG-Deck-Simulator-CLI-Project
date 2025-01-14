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

  def num_list
    x = 0
    x = x+1
    "#{x} #{@title}"
  end
end

x = [Card.new("steve", 4.2), Card.new("Drew", 6.3), Card.new("Race", 10.5), Card.new("Kyle", 5), Card.new("Drew", 6.2), Card.new("Drew", 6.3), Card.new("Drew", 6.3),]
y = 0
y = y+1
puts "\n"
puts x 
