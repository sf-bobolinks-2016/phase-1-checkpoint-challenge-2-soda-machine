class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count

    count = 0

    @sodas.each { count += 1 }

    return count

  end

  def find_soda(soda_brand)
  end

  def sell(soda_brand)
  end

end
