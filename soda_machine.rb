require_relative 'soda'

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

    @sodas.each_with_index do |soda, idx|
      if soda.brand == soda_brand
        return @sodas[idx]
      end
    end

    return nil
  end

  def sell(soda_brand)

    @sodas.each_with_index do |soda, idx|
      if soda.brand == soda_brand
        temp = @sodas[idx]
        @sodas.delete_at(idx)
        @cash += soda.price
        return temp
      end
    end

    return nil
  end

end