class Centaur
  attr_reader :name, :breed, :tired_meter, :standing, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @tired_meter = 0
    @standing = true
    @sick = false
  end

  def shoot
    if cranky? || laying?
      "NO!"
    else
      @tired_meter += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      "NO!"
    else
      @tired_meter += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    tired_meter >= 3
  end

  def rested?
    tired_meter < 3
  end

  def stand_up
    @standing = true
  end

  def standing?
    standing
  end

  def lay_down
    @standing = false
  end

  def laying?
    standing == false
  end

  def sleep
    if standing?
      "NO!"
    else
      @tired_meter = 0
    end
  end

  def drink_potion
    if laying?
      "NO!"
    elsif rested?
      @sick = true
    else
      @tired_meter = 0
    end
  end

  def sick?
    sick
  end

end
