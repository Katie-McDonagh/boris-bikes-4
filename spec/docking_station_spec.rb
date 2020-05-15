require './lib/docking_station.rb'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
  it 'raises an error when there are no bikes available' do
    # Let's not dock a bike first:
    # remember subject == DockingStation.new
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end

  it {is_expected.to respond_to(:dock).with(1).argument }


    it { is_expected.to respond_to(:bike) }

    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    describe '#dock' do
      it 'raises an error when full' do
        20.times { subject.dock(Bike.new) }
        expect { subject.dock Bike.new }.to raise_error 'Docking station full'
      end
    end

   it 'docks a bike' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
   end

   it 'contains a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
      end

end
