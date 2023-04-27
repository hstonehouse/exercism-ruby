class Bob
  def self.hey(remark)
    if remark.upcase == remark && remark.end_with?("?") && remark =~ /[A-Z]+/
      "Calm down, I know what I'm doing!"
    elsif remark.upcase == remark && remark =~ /[A-Z]+/
      "Whoa, chill out!"
    elsif remark.strip.end_with?("?")
      "Sure."
    elsif remark.strip == ""
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
