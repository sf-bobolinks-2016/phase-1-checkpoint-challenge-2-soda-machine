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
    return nil if !find_soda(soda_brand)
    if find_soda(soda_brand)
      @cash += find_soda(soda_brand).price
      soda = find_soda(soda_brand)
      @sodas.delete(find_soda(soda_brand))
      return soda
    end
  end

end
