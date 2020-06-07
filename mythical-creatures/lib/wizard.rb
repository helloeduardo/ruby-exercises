class Wizard
  attr_reader :name, :bearded, :energy

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @energy= 3
  end

  def bearded?
    bearded
  end

  def incantation(power)
    "sudo " + power
  end

  def rested?
    energy > 0
  end

  def cast
    @energy -= 1
    "MAGIC MISSILE!"
  end

end
