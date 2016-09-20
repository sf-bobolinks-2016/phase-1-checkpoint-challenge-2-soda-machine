class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

my_soda = Soda.new({:brand => "coke" , :price => 2.33})
p my_soda
p my_soda.brand == "coke"

