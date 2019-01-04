require_relative './money'

class Bank
  def initialize
    @rates = {}
  end

  def reduce(source, to)
    source.reduce(self, to)
  end

  def rate(from, to)
    # from == "CHF" && to == "USD" ? 2 : 1
    return 1 if from == to
    @rates[[from, to]]
  end

  def add_rate(from, to, rate)
    @rates[[from, to]] = rate
  end
end