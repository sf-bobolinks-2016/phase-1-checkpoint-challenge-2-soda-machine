class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    #Call count method on sodas array to return number of soda totals.
    @sodas.count
  end

  def find_soda(soda_brand)
    #Use enumerable to iterate over sodas looking for specific brand, returning nil by default.
    @sodas.detect {|soda| return soda if soda.brand == soda_brand}
  end

  def sell(soda_brand)
    #Iterate over sodas, and when brand is found, remove soda from machine (@sodas), and subtract price
    #from overall cash (@cash).
    @sodas.detect do |soda|  
      if soda.brand == soda_brand
        @cash += soda.price 
        @sodas.delete(soda)
        return soda
      end
    end
  end
end
