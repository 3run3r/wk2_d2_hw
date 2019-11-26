require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class TestRiver < Minitest::Test
  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")
    @fishes = [@fish1, @fish2, @fish3]
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Po", @fishes)

  end

  def can_get_river_name
    assert_equal("Po", @river.name)
  end
end
