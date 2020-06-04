class Ferret
  attr_accessor :name

  def initialize
  end

  def give_name(new_name)
    @name = new_name
  end

  def name
    if @name.nil?
      "a ferret has no name"
    else
      "a ferret's name is #{@name}"
    end
  end
end
