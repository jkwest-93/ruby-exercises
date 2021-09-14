class Hobbit
  attr_accessor :name, :disposition, :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age = age + 1
  end

  def adult?
    @age > 32
  end

  def has_ring?
    @name == 'Frodo'
  end

  def is_short?
    true
  end
end