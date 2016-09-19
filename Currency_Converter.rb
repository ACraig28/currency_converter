class Currency
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end



end

dollars =  Currency.new(1, "usd")
euro = Currency.new(1, "eur")
yuan = Currency.new(1, "cyn")
