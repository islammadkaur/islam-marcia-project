require 'rails_helper'

RSpec.describe Location, type: :model do

  it "has a name" do
    @location = Location.new
    @location.name = "location"
    expect(@location.name).to eq("location")
  end

  it "has a location type" do
    @location = Location.new
    @location.location_type = "type"
    expect(@location.location_type).to eq("type")
  end


end
