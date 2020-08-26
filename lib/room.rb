class Room
  attr_reader :category, :length, :width, :rooms

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @rooms = []

  end

  def area
    area = "(length * #{width})".to_i
    p area
  end

  def is_painted?
   is_painted?
  end
end
