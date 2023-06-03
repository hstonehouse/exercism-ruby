=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end

class Nucleotide
  attr_accessor :histogram

  def initialize(string_of_dna)
    @histogram = {
        'A' => 0,
        'T' => 0,
        'C' => 0,
        'G' => 0
      }
    raise ArgumentError if invalid(string_of_dna)
    string_of_dna.each_char{|letter| histogram[letter]+=1}
  end

  def self.from_dna(string_of_dna)
    Nucleotide.new(string_of_dna)
  end

  def count(letter)
    @histogram[letter]
  end

  def invalid(string_of_dna)
    return true if string_of_dna.chars.filter { |letter| histogram[letter] == nil }.count > 0
  end
end
