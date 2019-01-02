class Money
  attr_reader :amount

  def equal?(money)
    self.amount == money.amount && self.class == money.class
  end

  def ==(money)
    self.amount == money.amount && self.class == money.class
  end
end