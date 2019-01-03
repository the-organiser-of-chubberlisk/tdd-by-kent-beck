class Money
  attr_reader :amount

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def equal?(money)
    self.amount == money.amount && self.class == money.class
  end

  def ==(money)
    self.amount == money.amount && self.class == money.class
  end
end