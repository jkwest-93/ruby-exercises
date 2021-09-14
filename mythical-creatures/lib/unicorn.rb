class Unicorn
  attr_reader :name, :color, :silver

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def silver?
    color === 'silver'
  end

  def say(saying)
    sparkles = '**;*'
    sparkles + ' ' + saying + ' ' + sparkles
  end
end