# frozen_string_literal: true

class StringCalculator
  attr_reader :numbers

  # @param [String] string
  # @return [Fixnum]
  def add(string)
    return 0 if string.empty?

    @numbers = string_to_numbers(string)
    @numbers.inject(0) { |defaut, actual| defaut + actual }
  end

  # extract numbers for string using regex
  # @param [String] string
  # @return [Array]
  def string_to_numbers(string)
    negative_numbers = string.scan(/-\d+/)
    raise "Negative numbers not allowed: #{negative_numbers.join(',')}" unless negative_numbers.empty?

    string.scan(/-?\d+/).map(&:to_i)
  end
end
