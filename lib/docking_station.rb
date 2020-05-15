require './lib/bike'

class DockingStation

  attr_reader :bike
  attr_reader :bikes

  def initialize
    @bikes = []
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

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
