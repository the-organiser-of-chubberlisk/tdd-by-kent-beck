require 'minitest/autorun'
require_relative './dollar'

class TestDollar < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    five.times(2)
    assert_equal 10, five.amount
  end
end