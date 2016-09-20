main()
puts "What type of currency do you currently have?"
code = gets.chomp
puts "What is the amount you which to convert?"
amount = gets.chomp
user_entry = Currency.new(amount,code)
