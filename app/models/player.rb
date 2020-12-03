class Player < ApplicationRecord
    has_many :battles
    has_many :attacks
    has_many :locations, through: :battles
    has_many :enemies, through: :battles

  #   attr_accessor :name, :health
    
  #   def initialize(name, health = 100)
  #     @name = name
  #     @health = health
  # end

end
