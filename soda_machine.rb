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
    @sodas.each do |soda|
      return soda if soda.brand == soda_brand
    end
    nil
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda
      @cash += soda.price
      return_soda = soda
      @sodas.delete(soda)
      return return_soda
    end
  end
end
