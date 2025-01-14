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
    return @title
    # "#{@title} is worth #{@value}"
  end

end
