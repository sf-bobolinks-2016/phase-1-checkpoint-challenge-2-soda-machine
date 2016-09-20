class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    #return soda instance variable pepsi where the brand = 'Pepsi'
    #from soda_machine-:sodas
    @sodas.each{|soda|if soda.brand == soda_brand
      return soda
    end}
    # @sodas[0]


  end

  def sell(soda_brand)
      # delete from soda in soda_machine
      # where soda brand name = soda_brand
  end

end

