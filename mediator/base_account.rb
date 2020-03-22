class BaseAccount
  attr_accessor :transaction

  def initialize(transaction = nil)
    @transaction = transaction
  end
end
