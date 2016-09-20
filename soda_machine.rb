require_relative 'soda'

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
    @sodas.find { |soda| soda.brand == soda_brand}
    # @sodas.each { |soda| return soda if soda_brand == soda.brand }
  end

  def sell(soda_brand)
    @sodas.each do |soda|
      @cash += soda.price if soda.brand == soda_brand
      soda.delete if soda_brand == soda.brand
    end
  end

end
