require_relative 'soda'
class SodaMachine
  attr_reader :sodas, :cash, :brand

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.fetch(soda_brand)
  end

  def sell(soda_brand)

  end

end

# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)


# soda_machine = SodaMachine.new(sodas: [pepsi], cash: 1.00)
# p soda_machine.sodas
