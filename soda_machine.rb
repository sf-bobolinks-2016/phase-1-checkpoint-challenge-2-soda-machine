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
    p @sodas.select {|soda| soda.brand == soda_brand}[0]


  end

  def sell(soda_brand)
    p soda_to_sell = find_soda(soda_brand)# setting the return value of my find_soda method equal to a variable for readability...

    if soda_to_sell
      @cash += soda_to_sell.price
      @sodas.delete(soda_to_sell) #deleting my soda from my soda array
    end

  end

end
