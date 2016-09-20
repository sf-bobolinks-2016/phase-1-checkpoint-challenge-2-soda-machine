require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    count = 0
    @sodas.each do |brand, price|
      count += 1
    end
    count
  end

  def find_soda(soda_brand)
    found = ""
    @sodas.each_with_index do |brand, index|
      if @sodas[index].brand == soda_brand
        found = @sodas[index]
        return found
      end
    end
    nil
  end

  def sell(soda_brand)
    found = find_soda(soda_brand)
    if found
      @cash += found.price
      @sodas.delete(found)
      found
    else
      nil
    end
  end

end

pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
m = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)
# p m.find_soda('Pepsi')
# p m.sodas

# p m.find_soda('Pepsi')
p m.sell('Coke Zero')
p m.cash
m.sell('Mountain Dew')
p m.cash


