class Beaver
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name
    @name = @name + " the Beaver"
  end

end
