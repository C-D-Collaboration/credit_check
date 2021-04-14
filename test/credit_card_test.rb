require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_it_exists
    credit_card = CreditCard.new("5541808923795240", 20000)
    assert_instance_of CreditCard, credit_card
  end

  def test_it_has_a_card_number
    credit_card = CreditCard.new("5541808923795240", 20000)
    assert_equal "5541808923795240", credit_card.card_number
  end

  def test_it_has_a_limit
    credit_card = CreditCard.new("5541808923795240", 20000)
    assert_equal 20000, credit_card.limit
  end

  def test_it_can_check_card_number_is_valid?
    credit_card = CreditCard.new("5541808923795240", 20000)
    credit_card2 = CreditCard.new("5541808923795840", 20000)
    assert_equal true, credit_card.is_valid?
    assert_equal false, credit_card2.is_valid?
  end

  def test_it_can_display_the_last_4_digits
    credit_card = CreditCard.new("5541808923795240", 20000)
    assert_equal "5240", credit_card.last_four
  end
end