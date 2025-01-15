require "minitest/autorun"
require_relative "../deck"
require_relative "../card"

class TestDeck < Minitest::Test

 # def test_add_card
 #   @deck = Deck.new
 #   @deck.add_card(Card.new("title", "value"))
 #   assert_equal deck.quantity, @deck.cards_count
 # end
 # def test_add_card
 #   @deck = Deck.new
 #   @deck.add_card
  #  assert_equal 2, @deck.cards_count
  #end
  
  def test_add_card#(card) <-- Go to deck.rb and remove the # in front of (card) to make this test work. 
    @deck = Deck.new
    @deck.add_card(Card.new("title", "value"))
    @deck.add_card(Card.new("title", "value"))
    assert_equal 2, @deck.cards_count
  end

end
