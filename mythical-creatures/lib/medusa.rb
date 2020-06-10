#Try refactoring without attr_accessor
class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    #turn new victim to stone
    statues << victim
    victim.stoned = true

    #remove first victim and unstone if a 4th is turned to a statue
    if statues.count > 3
      statues.shift.stoned = false
    end
  end

end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    stoned
  end

end
