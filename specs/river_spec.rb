require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class TestRiver < Minitest::Test
  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")
    @all_fish = [@fish1, @fish2, @fish3]
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Po", @all_fish)

  end

  def test_can_get_river_name
    assert_equal("Po", @river.name)
  end

  def test_how_many_fishes
    assert_equal(3, @river.fish_count)
  end

  def test_can_remove_fish
    @river.remove_fish
    assert_equal(2, @river.fish_count)
  end

 def test_fish_when_bear_eats
   @river.remove_fish
   @bear.add_fish(@fish3)
   assert_equal(2, @river.fish_count)
   assert_equal(1, @bear.count_fish)
 end

end
