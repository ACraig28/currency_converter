class CurrencyConverter
  attr_accessor :conversion_rate, :code,
  @conversion_rates= {"USD": {"USD": 1, "EUR": 0.89423, "CYN": 6.67074}, "EUR": {"EURO": 1, "USD":1.11813, "CYN": 7.46003}, "CYN": {"CYN": 1, "USD": 0.149908, "EUR": 0.134040}}
  def convert_to_new_currency(current_currency, desired_currency)
    rate_to_be_used = @conversion_rates[current_currency.code][desired_currency]
    converted_currency = amount * rate_to_be_used
  end
end
