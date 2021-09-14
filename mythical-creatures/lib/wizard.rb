class Wizard
  attr_accessor :name, :bearded, :spell_count

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spell_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(chant)
    'sudo ' + chant
  end

  def rested?
    @spell_count < 3
  end

  def cast
    @spell_count = spell_count + 1
    'MAGIC MISSILE!'
  end
end