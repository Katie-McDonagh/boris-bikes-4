require './lib/bike'

class DockingStation

  attr_reader :bike
  attr_reader :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

DEFAULT_CAPACITY = 20

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
