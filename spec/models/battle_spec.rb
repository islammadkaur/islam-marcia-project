require 'rails_helper'

RSpec.describe Battle, type: :model do

  it "has a location" do
    @battle = Battle.new
    @battle.location_id = 1
    expect(@battle.location_id).to eq(1)
  end

  it "has a player" do
    @battle = Battle.new
    @battle.player_id = 1
    expect(@battle.player_id).to eq(1)
  end

  it "has a enemy" do
    @battle = Battle.new
    @battle.enemy_id = 1
    expect(@battle.enemy_id).to eq(1)
  end
  
  it "has a prize" do
    @battle = Battle.new
    @battle.prize = "Ice Cream"
    expect(@battle.prize).to eq("Ice Cream")
  end

  it "has a winner" do
    @battle = Battle.new
    @battle.state = "WON"
    expect(@battle.state).to eq("WON")
  end

end
