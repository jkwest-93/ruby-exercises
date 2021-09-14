class Ferret
  attr_reader :name

  def initialize
    @name = nil
  end

  def give_name(newName)
    @name = newName
  end
end