class Transaction
  def initialize(account1, account2)
    @account1 = account1
    @account1.transaction = self
    @account2 = account2
    @account2.transaction = self
  end

  def credit(account, balance)
    if account == @account1
      @account2.balance -= balance
      @account1.balance += balance
    elsif account == @account2
      @account1.balance -= balance
      @account2.balance += balance
    end
  end

  def debet(account, balance)
    if account == @account1
      @account1.balance -= balance
      @account2.balance += balance
    elsif account == @account2
      @account2.balance -= balance
      @account1.balance += balance
    end
  end
end
