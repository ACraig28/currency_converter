class CurrencyConverter
    attr_accessor :conversion_rate, :code,
  def initialize(code, conversion_rate)
    @code = code
    @conversion_rate = conversion_rate
    conversion_rates= {"USD": {"USD": 1, "EUR": 0.89423, "CYN": 6.67074}, "EUR": {"EURO": 1, "USD":1.11813, "CYN": 7.46003}, "CYN": {"CYN": 1, "USD": 0.149908, "EUR": 0.134040}}
  end

end
