require_relative './base_account.rb'

class Account < BaseAccount
  attr_accessor :balance

  def initialize(init_balance)
    @balance = init_balance
  end

  def credit(balance)
    @transaction.credit self, balance
  end

  def debet(balance)
    @transaction.debet self, balance
  end
end
