module Complement
  $rna = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(letter)
    letter.split("").map do |letter|
      $rna[letter]
    end.join("")
  end
end

