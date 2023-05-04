class Bob
  def self.hey(remark)
    if all_caps?(remark) && question?(remark)
      "Calm down, I know what I'm doing!"
    elsif all_caps?(remark)
      "Whoa, chill out!"
    elsif question?(remark)
      "Sure."
    elsif silence?(remark)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  def self.all_caps?(remark)
    remark.upcase == remark && remark =~ /[A-Z]+/
  end

  def self.question?(remark)
    remark.strip.end_with?("?")
  end

  def self.silence?(remark)
    remark.strip == ""
  end
end
