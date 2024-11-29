require_relative '../calculator'

describe "calculator" do
  describe "add method" do
    c = Calculator.new

    it "when empty string" do
      expect(c.add("")).to eq(0)
    end
  end
end
