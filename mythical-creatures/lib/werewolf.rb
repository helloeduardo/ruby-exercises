class Werewolf
  attr_reader :name, :location, :human_form, :hungry, :victims_consumed

  def initialize(name, location = "")
    @name = name
    @location = location
    @human_form = true
    @hungry = false
    @victims_consumed = 0
  end

  def human?
    human_form
  end

  def change!
    #change to opposite form
    @human_form = !human_form

    #is hungry when changed to wolf
    @hungry = true if self.wolf?
  end

  def wolf?
    !human_form
  end

  def hungry?
    hungry
  end

  def consume(victim)
    if self.wolf?
      @victims_consumed += 1
      victim.status = :dead
      @hungry = false
    end
  end

end
