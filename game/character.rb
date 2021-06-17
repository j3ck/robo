class Character
  attr_reader :x, :y

  def initialize
    @x = 0
    @y = 0
    @directions = %w[N E S W]
  end

  def change_direction!(direction)
    direction == 'L' ? @directions.rotate!(-1) : @directions.rotate!(1)
  end

  def current_direction
    @directions.first
  end

  def new_placement
    x, y = @x, @y

    case current_direction
    when 'N'
      y += 1
    when 'E'
      x += 1
    when 'S'
      y -= 1
    when 'W'
      x -= 1
    end

    [x, y]
  end

  def move!(x, y)
    @x, @y = x, y
  end
end
