class Battle < ApplicationRecord
    belongs_to :player
    belongs_to :enemy
    belongs_to :location
    belongs_to :attack
    


end
