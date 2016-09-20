class CurrencyConverter
    attr_accessor :conversion_rate, :code, :conversion_rate_hash
  def initialize(code, conversion_rate)
    @code = code
    @conversion_rate = conversion_rate
    conversion_rate_hash = {}
    conversion_rate_hash[code] = conversion_rate
  end

end

dollars = CurrencyConverter.new("USD", 1)
euro = Currency.new("EUR", .89480)
