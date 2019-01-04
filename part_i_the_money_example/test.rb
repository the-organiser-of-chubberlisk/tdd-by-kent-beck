require 'minitest/autorun'
require_relative './money'

class Test < Minitest::Test
  def test_multiplication
    five = Money.dollar(5)
    assert_equal Money.dollar(10), five.times(2)
    assert_equal Money.dollar(15), five.times(3)
  end

  def test_equality
    assert Money.dollar(5).equal?(Money.dollar(5))
    refute Money.dollar(5).equal?(Money.dollar(6))
    refute Money.franc(5).equal?(Money.dollar(5))
  end

  def test_currency
    assert_equal "USD", Money.dollar(1).currency
    assert_equal "CHF", Money.franc(1).currency
  end

  def test_simple_addition
    sum = Money.dollar(5).plus(Money.dollar(5))
    assert_equal Money.dollar(10), sum
  end
end