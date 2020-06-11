class Wallet
  attr_reader :coins

  def initialize
    @coins = []
  end

  def cents
    total_cents = 0
    coins.each do |coin|
      total_cents += 1 if coin == :penny
      total_cents += 5 if coin == :nickel
      total_cents += 10 if coin == :dime
      total_cents += 25 if coin == :quarter
      total_cents += 100 if coin == :dollar
    end
    total_cents
  end

  def <<(coin)
    coins << coin
  end

  def take(*money)
    money.each do |coin|
      #delete coin from coins array at the index where the coin is found.
      #unless that coin is nowhere to be found, then do nothing.
      @coins.delete_at(coins.index(coin)) unless coins.index(coin).nil?
    end
  end


end
