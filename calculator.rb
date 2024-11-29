class Calculator
  def add(numbers)
    return 0 if numbers.empty?


    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers = numbers.split(Regexp.union(delimiter))
    else
      numbers = numbers.gsub("\n", ",").split(",")
    end

    integers = numbers.map(&:to_i)
    negatives = integers.select(&:negative?)

    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    integers.sum
  end
end