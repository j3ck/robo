def game(commands = '')
  x = 0
  y = 0
  directions = %w[N E S W]
  commands.each_char do |command|
    if %w[L R].include? command
      command == 'L' ? directions.rotate!(-1) : directions.rotate!(1)
    end

    if command == 'M'
      case directions.first
      when 'N'
        y += 1 if y + 1 <= 4
      when 'S'
        y -= 1 if y - 1 >= 0
      when 'W'
        x -= 1 if x - 1 >= 0
      when 'E'
        x += 1 if x + 1 <= 4
      end
    end
  end

  "#{y} : #{x} : #{directions.first}"
end
