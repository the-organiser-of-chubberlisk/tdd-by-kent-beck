class Money
  attr_reader :amount,:currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    Money.new(amount, "USD")
  end

  def self.franc(amount)
    Money.new(amount, "CHF")
  end

  def equal?(money)
    self.amount == money.amount && self.currency == money.currency
  end

  def ==(money)
    self.amount == money.amount && self.currency == money.currency
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  def plus(addend)
    Money.new(@amount + addend.amount, @currency)
  end
end