class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      return soda if soda.brand == soda_brand
    end
    nil
  end

  def sell(soda_brand)
    return nil if !find_soda(soda_brand)
    requested_soda = find_soda(soda_brand)
    @cash += requested_soda.price
    @sodas.delete(requested_soda)
    return requested_soda
  end

end
