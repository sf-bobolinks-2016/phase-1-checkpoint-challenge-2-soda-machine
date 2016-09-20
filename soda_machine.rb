require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      soda_to_sell = find_soda(soda_brand)
      @cash += soda_to_sell.price 
      @sodas.delete(soda_to_sell)
    end
  end

end
