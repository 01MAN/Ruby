require_relative '../transaction.rb'
require_relative '../account.rb'
require 'rspec'

describe Transaction do
  describe '#credit' do
    let(:bank) { Account.new(1_000_000) }
    let(:user) { Account.new(0) }

    subject do
      Transaction.new(bank, user)
      user.credit(50_000)
    end

    it 'when user take credit 50_000' do
      subject
      expect(user.balance).to eq(50_000)
      expect(bank.balance).to eq(950_000)
    end
  end

  describe '#debet' do
    let(:bank) { Account.new(950_000) }
    let(:user) { Account.new(50_000) }

    subject do
      Transaction.new(bank, user)
      user.debet(50_000)
    end

    it 'when user take debet 50_000' do
      subject
      expect(user.balance).to eq(0)
      expect(bank.balance).to eq(1_000_000)
    end
  end
end
