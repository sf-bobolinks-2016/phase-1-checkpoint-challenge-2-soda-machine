class SodaMachine
  attr_reader :sodas, :cash
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = nil
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
    if soda_brand == soda.brand
      return soda
    else
      nil
    end
    end
    nil
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
    @sodas.each do |soda|
    if soda_brand == soda.brand
      @sold_soda = @sodas.delete_at(@sodas.index(soda))
    else
      nil
    end
    end
    @cash += @sold_soda.price
    @sold_soda
    else
    nil
    end
  end

end
