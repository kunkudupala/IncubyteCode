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

    it 'returns the sum of multiple numbers' do
      expect(c.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines as delimiters' do
      expect(c.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiters' do
      expect(c.add("//;\n1;2")).to eq(3)
    end
  end
end
