require "minitest/autorun"
require_relative "../deck"
require_relative "../card"

class TestDeck < Minitest::Test

  def test_add_card
    @deck = Deck.new
    @deck.add_card(Card.new("Ace of Spades", 1))
    @deck.add_card(Card.new("King of Hearts", 10))
    assert_equal 2, @deck.cards_count
  end

end
