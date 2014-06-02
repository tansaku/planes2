
# When we create a new plane, it should have a "flying" status, 
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane 
# in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's 
# status should become "flying"
describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
    expect(plane).to be_flying
  end

  it 'can land' do
    # 1. lands (call method on plane)
    plane.land!
    # 2. check it is not flying
    expect(plane).not_to be_flying
  end

  it 'can take off' do
    plane.take_off!
  end  
  
  it 'has a flying status when in the air' do
    plane.take_off!
    expect(plane).to be_flying
  end
end
 