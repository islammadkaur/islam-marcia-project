class Player < ApplicationRecord
    has_many :battles
    has_many :attacks
    has_many :locations, through: :battles
    has_many :enemies, through: :battles
    
end
