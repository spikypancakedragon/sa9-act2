require "prob3"

RSpec.describe StringWrapper do

  before(:each) do
    @some_wrapper = StringWrapper.new("Spiky")
  end

  describe "#reverse" do
    it "reverses the string" do
      expect(@some_wrapper.reverse).to eq('ykipS')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(@some_wrapper.upcase).to eq("SPIKY")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(@some_wrapper.downcase).to eq("spiky")
    end
  end

end
