require_relative 'script'
Dir['./game/*.rb'].each {|file| require file }

def run_script(path)
  game(path)
end

def run_game(path)
  Game.new.play(path).position
end
