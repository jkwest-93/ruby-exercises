class Person
  attr_accessor :name, :is_stoned

  def initialize(name)
    @name = name
    @is_stoned = false
  end

  def stoned?
    @is_stoned
  end
  
  def toggleStoned
    @is_stoned = !is_stoned
  end
end

class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if statues.count == 3
      statues[0].toggleStoned
      @statues.shift
    end

    victim.toggleStoned
    @statues.push(victim)
  end
end