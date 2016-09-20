class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  # return the total number of sodas in the machine
  def current_inventory_count
    @sodas.length
  end

  # search through the Soda Machine's sodas array aka the inventory
    # and pick the first soda that matches the soda_brand choice
  def find_soda(soda_brand)
    @sodas.find {|soda| return soda if soda.brand == soda_brand}
  end

  # will return nil if the soda brand selected is not found
  # Otherwise, it will add the price of that selected soda to the
    # Soda Machine's cash total then delete that particular instance of soda
    # from the Soda Machine's sodas array aka the inventory
  def sell(soda_brand)
    choice = find_soda(soda_brand)
    return if choice == nil
    @cash += choice.price
    @sodas.delete choice
  end

end

# [#<Soda:0x007fb62402ef18 @brand="Coke Zero", @price=1.0>]
