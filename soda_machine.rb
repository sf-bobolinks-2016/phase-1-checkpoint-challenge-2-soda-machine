class SodaMachine
  attr_reader :sodas, :cash

  #SodaMachine takes a hash as an argument
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  #return the number of sodas in the soda machine
  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
    nil
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda
      add_cash
      remove_soda(soda_brand)
      return soda
    end
    nil
  end

  def add_cash
    @cash += 1
  end

  def remove_soda(soda_brand)
    sodas.delete_if do |soda|
      soda.brand == soda_brand
    end
  end

end
