require_relative '../calculator'

describe "calculator" do
  describe "add method" do
    c = Calculator.new

    it "when empty string" do
      expect(c.add("")).to eq(0)
    end

    it 'returns the number itself when only one number is provided' do
      expect(c.add("5")).to eq(5)
    end

    it 'returns the sum of two numbers' do
      expect(c.add("1,2")).to eq(3)
    end
  end
end
