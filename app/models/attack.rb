class Attack < ApplicationRecord
    has_many :battles
    has_many :players, through: :battles
    has_many :enemies, through: :battles
    
end
