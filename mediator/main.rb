require_relative './account.rb'
require_relative './transaction.rb'

def print_balance(bank, petya)
  puts "Bank balance: #{bank.balance}"
  puts "Petya balance: #{petya.balance}"
  puts
end

bank = Account.new(1_000_000)
petya = Account.new(0)
Transaction.new(bank, petya)

puts 'Init'
print_balance(bank, petya)

puts 'Petya take credit'
petya.credit(50_000)
print_balance(bank, petya)

puts 'Petya take debet'
petya.debet(30_000)
print_balance(bank, petya)

