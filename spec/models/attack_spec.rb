require 'rails_helper'

RSpec.describe Attack, type: :model do

  it "has a name" do
    @attack = Attack.new
    @attack.name = "attack"
    expect(@attack.name).to eq("attack")
  end

  it "has a damage value" do
    @attack = Attack.new
    @attack.damage = 20
    expect(@attack.damage).to eq(20)
  end

  it "has a attack type" do
    @attack = Attack.new
    @attack.attack_type = "type"
    expect(@attack.attack_type).to eq("type")
  end


end
