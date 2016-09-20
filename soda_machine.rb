require_relative 'soda'


class SodaMachine < Soda
  attr_reader :sodas, :cash , :args

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @@soda_count
  end

  def find_soda(soda_brand)
    #@sodas.each do |soda|
      #p "@#{soda_brand}" if "@#{soda_brand}" == soda_brand
    end

  end

  def sell(soda_brand)
    #@sold_soda = @sodas.delete_at()
  end

end
