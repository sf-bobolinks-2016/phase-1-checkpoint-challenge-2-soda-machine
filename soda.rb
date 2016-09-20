class Soda
  attr_reader :brand, :price


@@soda_count = 0

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
    @@soda_count += 1
  end
end
