
require './lib/docking_station.rb'

describe DockingStation do
    # it {is_expected.to respond_to(:release_bike)}


    describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end


  it {is_expected.to respond_to(:dock).with(1).argument }


    it { is_expected.to respond_to(:bike) }

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
