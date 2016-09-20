main()
  puts "What is the amount you which to convert?"
  amount = gets.chomp
  #create if statement - if symbol in first answer, 2nd question not needed
  puts "What type of currency do you currently have?"
  code = gets.chomp
  puts "What type of currency do you want it converted to?"
  desired_currency = gets.chomp
  user_entry = Currency.new(amount,code)
  conversion1 = Currency_Converter.new
  conversion1.convert_to_new_currency(user_entry, desired_currency)
end
