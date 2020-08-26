class Room
  attr_reader :category, :length, :width, :rooms

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @rooms = []

  end

  def area
    "#{@width.to_i * @length}".to_i
  end

  def is_painted?
   painted?
  end
end
