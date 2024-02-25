require "prob4"

RSpec.describe BankAccount do

  before(:each) do
    @some_account = BankAccount.new(100)
  end

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      expect(@some_account.deposit(50)).to eq(150)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      expect(@some_account.withdraw(50)).to eq(50)
    end

    it "does not change the balance if insufficient funds" do
      @some_account.withdraw(200)
      expect(@some_account.balance).to eq (100)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(@some_account.balance).to eq(100)
    end
  end

end
