class Field
  def initialize
    @min = 0
    @max = 4
  end

  def valid_placement?(x, y)
    y <= @max && y >= @min && x <= @max && x >= @min
  end
end
