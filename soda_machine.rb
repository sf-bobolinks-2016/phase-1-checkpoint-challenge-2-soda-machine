class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
      count = 0 
      @sodas.each_with_index do |soda, index|
        count +=index 
      end
      count
  end

  def find_soda(soda_brand)
    match = ""
    @soda.each do |soda|
      if soda == soda_brand 
        match << soda_brand
      end
    end
    match
  end

  def sell(soda_brand)
    pick = find_soda(soda_brand)
    @sodas.each do |key, soda|
      if soda == soda_brand 
        @soda.delete(key)
      end
    end
  end

end

p new = SodaMachine.new(brand: 'Pepsi', price: 0.65)
p new2 = SodaMachine.new(brand: 'Coke', price: 0.99) 
# p new.current_inventory_count
