# Calculator

A simple implementation of a Calculator in Ruby following TDD using RSpec.

---

## Features

The `Calculator` class implements the following features:

1. **Empty String**: Returns `0` for an empty string.
2. **Single Number**: Returns the give number when only one number is provided.
3. **Multiple Numbers**: Returns the sum of all numbers.
4. **Newlines as Delimiters**: Supports newlines (`\n`) as valid delimiters.
5. **Custom Delimiters**: Custom delimiter at the beginning (e.g., `//;\n1;2`).
6. **Negative Numbers**: Throws an exception with all negative numbers.

---

## Requirements

- Ruby 3.x or later
- RSpec

---

## Installation

Clone the repository:
```
  git clone https://github.com/kunkudupala/IncubyteCode
  cd IncubyteCode
```

---

## Usage
### Example Code

You can use the `Calculator` class as follows
```
  require './calculator'

  c = Calculator.new
  puts c.add("")            # Output: 0
  puts c.add("1")           # Output: 1
  puts c.add("1,2,3")       # Output: 6
  puts c.add("1\n2,3")      # Output: 6
  puts c.add("//;\n1;2")    # Output: 3

  begin
    c.add("1,-2,3,-4")
  rescue => e
    puts e.message                         # Output: Negative numbers not allowed: -2, -4
  end
```
---

## Tests
### Used Rspec as a test framework

Each test Cases 
- Returns `0` for an empty string.
- Returns the number itself for a single number.
- Returns the sum of two or more numbers separated by commas.
- Handles newlines as delimiters.
- Handles custom delimiters.
- Raises an error for negative numbers.

---

## Development
#### TDD Workflow
This project implemented in TDD.
