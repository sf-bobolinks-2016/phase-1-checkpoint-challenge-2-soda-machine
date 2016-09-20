require_relative 'soda'
class SodaMachine < Soda
  attr_reader :sodas, :cash
  @@count = 0
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @@count += 1

  end

  def self.current_inventory_count
    @@count
  end

  def find_soda(soda_brand)
  end

  def sell(soda_brand)
  end

end

# pepsi =  SodaMachine.new(brand: 'Pepsi', price: 0.65)
# coke =  SodaMachine.new(brand: 'Pepsi', price: 0.65)
# dew =  SodaMachine.new(brand: 'Pepsi', price: 0.65)
# pee =  SodaMachine.new(brand: 'Pepsi', price: 0.65)

#   SodaMachine.current_inventory_count
