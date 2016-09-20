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
    @sodas.each {|drink| return drink if drink.brand == soda_brand}
    nil
  end

  def sell(soda_brand)
    @sodas.each do |drink|
      if drink.brand == soda_brand
        @cash += drink.price
        return @sodas.delete(drink)
      end
    end
    nil
  end

end
