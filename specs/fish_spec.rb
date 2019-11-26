require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Nemo")
  end

  def test_can_get_fish_name
    assert_equal("Nemo", @fish.name)
  end

end
