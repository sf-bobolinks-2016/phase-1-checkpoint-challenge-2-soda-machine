class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas] #array of soda objects
    @cash = args[:cash] #total price
  end

# A soda machine will be able to return the number of sodas it contains. This method should be called SodaMachine#current_inventory_count
  def current_inventory_count
    @sodas.length
  end

# A soda machine will be able to find a single soda with a given brand. This method will be called SodaMachine#find_soda. 

  def find_soda(soda_brand)
    #soda brand 'pepsi'
    # find/soda
    # array of soda of object
    #loop through the array
    #comparision
    #soda.brand == brand_name
    #@sodas.find {|soda| soda.brand == soda_brand}


    @sodas.find{|soda| soda.brand == soda_brand}



  end

  def sell(soda_brand)
   #find the soda with the given soda_brand
   # 3 things: 
   #1. add the price of soda to the toral cash
   #2. delete the soda from the sodas collection
   #3.return the soda
    # @soda = find_soda(soda_brand) 
    # return nil if @soda.nil?
    # @cash += @soda.price
    # @sodas.delete(@soda)
    @soda = find_soda(soda_brand)
    p @soda
    return nil if @soda.nil?
    p @soda.price
    @cash += @soda.price
    @sodas.delete(@soda)

    # @soda ? @cash += @soda.price && @sodas.delete(@soda) : nil
  end

end

