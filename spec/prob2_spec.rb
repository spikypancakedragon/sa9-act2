require "prob2"

RSpec.describe TodoList do

  before(:each) do
    @some_list = TodoList.new
    @some_list.add("item 1")
  end

  describe "#add" do
    it "adds a todo to the list" do
      @some_list.add("item 2")
      expect(@some_list.todos).to eq(["item 1", "item 2"])
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      @some_list.remove("item 2")
      expect(@some_list.todos).to eq(["item 1"])
    end
  end

  describe "#todos" do
    it "returns all todos" do
      expect(@some_list.todos).to eq(["item 1"])
    end
  end

end
