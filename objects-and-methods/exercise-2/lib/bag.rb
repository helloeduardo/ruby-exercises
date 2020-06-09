class Bag
  attr_reader :candies

def initialize
  @candies = []
end

def empty?
  candies.empty?
end

def count
  candies.count
end

def <<(candy)
  candies << candy
end

def contains?(candy_name)
  #finds candy in bag
  candies.any? do |candy|
    candy.type == candy_name
  end
end

def grab(candy_name)
  #finds candy in bag
  grabbed_candy = candies.find do |candy|
    candy.type == candy_name
  end
  #deletes found candy from original array and returns deleted candy
  candies.delete(grabbed_candy)
end

def take(amount)
  #removes the first n elements of the bag candies array
  taken = []
  amount.times do
    taken << candies.shift
  end
  taken
end

end
