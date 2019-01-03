require 'minitest/autorun'
require_relative './dollar'
require_relative './franc'
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
    assert Money.franc(5).equal?(Money.franc(5))
    refute Money.franc(5).equal?(Money.franc(6))
    refute Money.franc(5).equal?(Money.dollar(5))
  end

  def test_franc_multiplication
    five = Money.franc(5)
    assert_equal Money.franc(10), five.times(2)
    assert_equal Money.franc(15), five.times(3)
  end
end