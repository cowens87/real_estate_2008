class House
 attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    price = "#{@price.delete "$"}".to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    self.price > 500000
  end

  def rooms_from_category(category)
    rooms.find_all do |room|
     room.category == category
   end
  end

  def area
    rooms.find_all do |room|
     room.area += 1
     #sum = the sum of area of all rooms
   end
  end

  def detals
  house.details[price, address]
  end

  def rooms_by_category(category)
    sorted_rooms = @rooms.map {|room| room.area}.sort
    sorted_rooms.group_by do |name|
      (rooms.find {|room| room.area == area}.category.to_s + "s").to_sym
      end
  end
end
