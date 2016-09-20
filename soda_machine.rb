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
    @sodas.detect {|soda| return soda if soda.brand == soda_brand}
  end

  def sell(soda_brand)
    @sodas.detect do |soda|
       if soda.brand == soda_brand
         @cash += soda.price
         @sodas.delete(soda)
         return soda
       end
     end
  end

end
