require 'airport'
require 'plane'
 
# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

describe Airport do
  
  let(:airport) { Airport.new }
  let(:jumbo) {Plane.new}
  
  context 'taking off and landing' do
    it 'a plane can land' do
      airport.land_plane!(jumbo)
      expect(jumbo).not_to be_flying
    end
    
    it 'a plane can take off' do
      airport.land_plane!(jumbo)
      airport.launch_plane!(jumbo)
      expect(jumbo).to be_flying   
    end

  end
  
  context 'traffic control' do
    it 'a plane cannot land if the airport is full' 
    
    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
    context 'weather conditions' do
      it 'a plane cannot take off when there is a storm brewing' do 
        airport.land_plane!(jumbo)
        # make weather bad
        expect(airport).to receive(:stormy?).and_return(true)
        airport.launch_plane!(jumbo)
        expect(jumbo).not_to be_flying 
      end
      
      it 'a plane cannot land in the middle of a storm'      
    end
  end
end
 