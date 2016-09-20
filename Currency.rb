class Currency
  attr_accessor :amount, :code

  def initialize(amount,code = nil)
    # if amount != amount.gsub(/[$]/, "")
    #   @amount = amount.delete("$")
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
