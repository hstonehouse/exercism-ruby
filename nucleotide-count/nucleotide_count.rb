=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end

class Nucleotide
  attr_accessor :histogram

  def initialize
    @histogram = {
        'A' => 0,
        'T' => 0,
        'C' => 0,
        'G' => 0
      }
  end

  def self.from_dna(string_of_dna)
    nucleotide = Nucleotide.new
    string_of_dna.each_char{|letter| nucleotide.histogram[letter]+=1}
    nucleotide
  end

  def count(letter)
    @histogram[letter]
  end
end
