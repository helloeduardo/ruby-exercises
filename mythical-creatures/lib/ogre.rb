class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_ogre
    @encounter_counter += 1

    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1

    if swings.even?
      human.knock_out
    end
  end

  def apologize(human)
    human.accept_apology
    @swings = 0
  end

end

class Human
  attr_reader :name, :encounter_counter, :knocked_out

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter_ogre
    @encounter_counter += 1
  end

  def notices_ogre?
    encounter_counter % 3 == 0
  end

  def knock_out
    @knocked_out = true
  end

  def knocked_out?
    knocked_out
  end

  def accept_apology
    @knocked_out = false
  end

end
