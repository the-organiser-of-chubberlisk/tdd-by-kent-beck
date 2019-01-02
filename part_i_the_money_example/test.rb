require 'minitest/autorun'
require_relative './dollar'
require_relative './franc'

class Test < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
  end

  def test_equality
    assert Dollar.new(5).equal?(Dollar.new(5))
    refute Dollar.new(5).equal?(Dollar.new(6))
    assert Franc.new(5).equal?(Franc.new(5))
    refute Franc.new(5).equal?(Franc.new(6))
  end

  def test_franc_multiplication
    five = Franc.new(5)
    assert_equal Franc.new(10), five.times(2)
    assert_equal Franc.new(15), five.times(3)
  end
end