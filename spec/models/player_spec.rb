require 'rails_helper'

RSpec.describe Player, type: :model do

  it "has a name" do
    @player = Player.new
    @player.name = "Player"
    expect(@player.name).to eq("Player")
  end

  it "has health" do
    @player = Player.new
    @player.health = 100
    expect(@player.health).to eq(100)
  end


end
