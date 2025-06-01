class StringCalculator
  attr_reader :numbers

  def add(string)
    return 0 if string.empty?
    @numbers = string_to_numbers(string)
    @numbers.inject(0){|defaut, actual| defaut + actual}
  end

  #extract numbers for string using regex
  def string_to_numbers(string)
    string.scan(/-?\d+/).map(&:to_i)
  end

end