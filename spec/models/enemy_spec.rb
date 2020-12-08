require 'rails_helper'

RSpec.describe Enemy, type: :model do

  it "has a name" do
    @enemy = Enemy.new
    @enemy.name = "enemy"
    expect(@enemy.name).to eq("enemy")
  end

  it "has health" do
    @enemy = Enemy.new
    @enemy.health = 100
    expect(@enemy.health).to eq(100)
  end


end
