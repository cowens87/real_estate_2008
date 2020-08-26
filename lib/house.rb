class House
 attr_reader :price, :address

  def initialize(price, address)
    @price = price
    @address = address
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @price > 500000
  end
end
