class Werewolf
  attr_accessor :name, :location, :is_human, :is_hungry, :victims

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @is_human = true
    @is_hungry = !is_human
    @victims = []
  end

  def human?
    @is_human
  end

  def wolf?
    !@is_human
  end

  def change!
    @is_human = !is_human
    @is_hungry = !is_human
  end

  def hungry?
    @is_hungry
  end

  def consume(victim)
    if @is_human == true
      return
    end

    if (victims.count)
      @is_hungry = false
    end

    victim.status = :dead
    @victims = victims.push(victim)
  end
end