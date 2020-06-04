class Dragon
  attr_reader :name, :rider, :color, :hunger

  def initialize (name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hunger = 3
  end

  def hungry?
    hunger > 0
  end

  def eat
    @hunger -= 1
  end

end
