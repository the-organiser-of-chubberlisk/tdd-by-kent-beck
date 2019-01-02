class Money
  attr_reader :amount

  def equal?(money)
    self.amount == money.amount
  end

  def ==(money)
    self.amount == money.amount
  end
end