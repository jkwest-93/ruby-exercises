class Dragon
  attr_accessor :name, :color, :rider, :hungryCounter

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungryCounter = 0
  end

  def hungry?
    @hungryCounter < 3
  end

  def eat
    @hungryCounter = hungryCounter + 1
  end
end