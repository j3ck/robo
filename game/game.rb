class Game
  def initialize
    @character = Character.new
    @field = Field.new
  end

  def play(path)
    path.each_char do |command|
      @character.change_direction!(command) if %w[L R].include? command

      perform_move if command == 'M'
    end

    self
  end

  def position
    "#{@character.y} : #{@character.x} : #{@character.current_direction}"
  end

  private

  def perform_move
    x, y = @character.new_placement
    @character.move!(x, y) if @field.valid_placement?(x, y)
  end
end
