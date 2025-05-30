# String Calculator TDD Kata (Ruby)

This repository contains a Ruby implementation of the String Calculator TDD (Test-Driven Development). The goal of this is to practice TDD principles by incrementally building a string calculator that can handle various input formats and edge cases.

## Project Description

The String Calculator is a simple utility that takes a string of numbers as input and returns their sum. The development process follows the TDD cycle: Red (write a failing test), Green (write just enough code to make the test pass), Refactor (improve the code without changing its behavior).

## Features

The `add` method of the String Calculator supports the following functionalities:

* **Empty String:** Returns `0` for an empty string input.

    * Example: `add("")` returns `0`

* **Single Number:** Returns the number itself for a single number input.

    * Example: `add("1")` returns `1`

* **Two Numbers:** Returns the sum of two numbers separated by a comma.

    * Example: `add("1,5")` returns `6`

* **Any Amount of Numbers:** Handles an arbitrary number of comma-separated numbers.

    * Example: `add("1,2,3,4,5")` returns `15`

* **New Lines as Delimiters:** Supports new lines (`\n`) as valid delimiters between numbers, in addition to commas.

    * Example: `add("1\n2,3")` returns `6`

* **Custom Delimiters:** Allows specifying a custom single-character delimiter at the beginning of the string. The format for this is `//[delimiter]\n[numbers...]`.

    * Example: `add("//;\n1;2")` returns `3` (using `;` as the delimiter)

* **Negative Numbers Exception:** Throws an exception if any negative numbers are provided in the input.

    * The exception message will be: `"negative numbers not allowed <negative_number>"`.

    * If multiple negative numbers are present, all of them will be listed in the exception message, separated by commas.

    * Example: `add("1,-2,3,-4")` throws `"negative numbers not allowed -2,-4"`
  
## Example Usage 
    calculator = StringCalculator.new
    calculator.add("")         # => 0
    calculator.add("1")        # => 1
    calculator.add("1,2")      # => 3
    calculator.add("1\n2,3")   # => 6
    calculator.add("//;\n1;2") # => 3
    calculator.add("1,-2,-5")  # => raises "negative numbers not allowed: -2, -5"

## Project Structure
    .
    ├── lib
    │   └── string_calculator.rb
    ├── spec
    │   └── string_calculator_spec.rb
    ├── Gemfile
    ├── README.md
    └── .rspec


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have Ruby installed on your system.

* [Download and Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)

### Cloning the Repository
    git clone https://github.com/your-username/string-calculator-kata.git
    cd string-calculator-kata
### Run tests using RSpec:

    bundle install
    rspec


