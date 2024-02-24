require "prob1_code"

RSpec.describe User do

  before(:each) do
    @some_user = User.new("spiky")
  end

  describe "#log_in" do
    it "logs the user in" do
      @some_user.log_in
      expect(@some_user.logged_in).to eq(true)
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      @some_user.log_out
      expect(@some_user.logged_in).to eq(false)
    end
  end

  describe "#username" do
    it "returns the correct username" do
      expect(@some_user.username).to eq("spiky")
    end
  end

end
