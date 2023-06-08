# When a function doesn't require state, it's best to use a module instead of a class.
# Using a class implies that it should be instantiated and has meaning when it is.
# A module is simply intended to act as a container, which better suits this situation.

module ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.color_code(color)
    COLORS.index(color)
  end
end
