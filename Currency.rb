class Currency
  attr_accessor :amount, :code

  def initialize(amount,code = nil)
    # if amount != amount.gsub(/[$]/, "")
    #   @amount = amount.gsub(/[$]/, "")
    #   @amount = amount.to_f
    #   @code = "USD"
    # elsif amount != amount.gsub(/[€]/, "")
    #   @amount = amount.gsub(/[€]/, "")
    #   @code = "EUR"
    # elsif amount != amount.gsub(/[¥]/, "")
    #   @amount = amount.gsub(/[¥]/, "")
    #   @code = "CYN"
    # else
      @amount = amount #@amount is the same thing as self.amount
      @code = code
#    end
#  end
end

  def ==(other)
    @amount == other.amount && @code == other.code
  end

  def !=(other)
    @amount == other.amount && @code == other.code
  end

  def +(other)
    if @code == other.code
      Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "wrong currency types"
    end
  end

  def -(other)
    if @code == other.code
      Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "wrong currency types"
    end
  end

  def *(other)
    if @code == other.code
      Currency.new(@amount * other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "wrong currency types"
    end
  end
end





one_dollar = Currency.new(1, "USD")
one_another_dollar = Currency.new(1, "USD")
two_dollars = Currency.new(2, "USD")
one_euro = Currency.new(1, "EUR")
one_yuan = Currency.new(1, "CYN")
three_dollars = one_dollar + two_dollars
six_dollars = two_dollars * three_dollars
