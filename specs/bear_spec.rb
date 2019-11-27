require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../bear')

class TestBear < Minitest::Test
  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fish.new("Nemo")
  end

  def test_can_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_can_get_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_starting_fishes_are_zero
    assert_equal(0, @bear.count_fish)
  end

  def test_can_add_fish_to_stomach
    @bear.add_fish(@fish)
    assert_equal(1, @bear.count_fish)
  end

  def test_can_roar
    assert_equal("Roar!", @bear.roar)
  end

end
