class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @inventory = []
    @sodas.each do |soda|
      @inventory << soda
    end
  end

# A soda machine will be able to return the number of sodas it contains. This method should be called SodaMachine#current_inventory_count
  def current_inventory_count
    @inventory.length
  end

# A soda machine will be able to find a single soda with a given brand. This method will be called SodaMachine#find_soda. 

  def find_soda(soda_brand)
    # return nil if soda brand is not in machine
    # filter through inventory and select soda_brand if in machine
    return nil if @inventory.include?(soda_brand)
    @inventory.select {|soda| soda == soda_brand }

  end

  def sell(soda_brand)
    # if soda_brand is in the soda machine
    # return soda
    # remove soda_brand from machine and add 1 to cash
    # else return nil  

    if @inventory.include?(soda_brand)
      @inventory.delete(soda_brand)
      @cash += 1
      return soda_brand
    else
      nil
    end
  end

end

