require 'minitest/autorun'
require './card'

class TestCard < Minitest::Test
  def setup
    @card = Card.new("Drew", 6.3)
  end

  def test_input
    assert_equal "Ed", @card.match_name, "No match!"
  end
end
