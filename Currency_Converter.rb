class CurrencyConverter
  def initialize(code, conversion_rate)
    @code = code
    @conversion_rate
  end
end

dollars = CurrencyConverter.new("USD", 1)
euro = Currency.new("EUR", .89480)
