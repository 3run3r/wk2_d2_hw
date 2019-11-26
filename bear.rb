class Bear
  attr_reader :name, :type
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def count_fish
    @stomach.length
  end

  def add_fish(fish)
    @stomach.push(fish)
  end
end
