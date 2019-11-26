class River
  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count
    @fish.length
  end

  def remove_fish
    @fish.pop
  end

end
