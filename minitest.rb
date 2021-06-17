require 'minitest/autorun'
require_relative 'main'

class GameTest < Minitest::Test
  def test_right_way
    assert_equal run_script('MLRM'), '2 : 0 : N'
    assert_equal run_game('MLRM'), '2 : 0 : N'
  end

  def test_out_of_field
    assert_equal run_script('LMRM'), '1 : 0 : N'
    assert_equal run_game('LMRM'), '1 : 0 : N'
  end

  def test_full_way
    assert_equal run_script('RMLMRMLMRMLMRMLM'), '4 : 4 : N'
    assert_equal run_game('RMLMRMLMRMLMRMLM'), '4 : 4 : N'
  end
end
