class Calculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers.split(Regexp.union(delimiter)).map(&:to_i).sum
    else
      numbers.gsub("\n", ",").split(",").map(&:to_i).sum
    end
  end
end