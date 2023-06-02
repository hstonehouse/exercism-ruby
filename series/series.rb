class Series
  attr_accessor :string_of_digits
  attr_accessor :new_array

  def initialize(string_of_digits)
    @string_of_digits = string_of_digits.split("")
    @new_array = []
  end

  def slices(num)
    raise ArgumentError if num == 0 || num.negative? || @string_of_digits.empty? || num > @string_of_digits.length
    @string_of_digits.each_cons(num) {|digit| @new_array << digit.join("")}
    @new_array
  end
end



