require 'minitest/autorun'
require_relative "card"

class TestCard < Minitest::Test
  def setup
    @card = Card.new("Drew", 6.3)
  end

  def test_input
    assert_equal "Drew", @card.match_name, "No match!"
  end
end
