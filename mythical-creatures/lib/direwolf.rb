class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if home == stark.location && starks_to_protect.count < 2
      @starks_to_protect << stark
      stark.protect
    end
  end

  def hunts_white_walkers?
    true if starks_to_protect.empty?
  end

  def leaves(stark)
    return stark unless starks_to_protect.any?(stark)
      stark.leave
      starks_to_protect.delete(stark)
  end

end

class Stark
  attr_reader :name, :location, :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end

  def protect
    @safe = true
  end

  def leave
    @safe = false
  end

  def safe?
    safe
  end

  def house_words
    if name == "Arya"
      "The North Remembers"
    else
    "Winter is Coming"
    end
  end

end
