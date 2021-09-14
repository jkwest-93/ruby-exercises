# class Lion
#   attr_reader :name, :sound

#   def initialize(lion_args)
#     @name = lion_args[:name]
#     @sound = lion_args[:sound]
#   end
# end

class Lion
  attr_reader :name, :sound

  def initialize(lion_args)
    lion_args = lion_args_defaults.merge(lion_args)

    @name = lion_args[:name]
    @sound = lion_args[:sound]
  end

  private
  def lion_args_defaults
    {name: 'Courage', sound: 'meow'}
  end
end