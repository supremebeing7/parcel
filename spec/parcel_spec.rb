require 'rspec'
require 'parcel'

describe Parcel do
  it 'is initialized with a height, width, length, and weight' do
    test_parcel = Parcel.new(2,2,2,2)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'lets you determine the volume of the package' do
    test_parcel = Parcel.new(2,2,2,2)
    test_parcel.volume.should eq 8
  end

  it 'lets you determine the shipping cost' do
    test_parcel = Parcel.new(2,2,2,2)
    test_parcel.shipping_cost.should eq 16
  end
end
