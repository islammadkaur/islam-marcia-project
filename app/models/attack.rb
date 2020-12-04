class Attack < ApplicationRecord
    has_many :battles
    has_many :players, through: :battles
    has_many :enemies, through: :battles

    validate :correct_attack_type, :correct_target
    validates :name, presence: true, uniqueness: true

    def correct_attack_type
        if self.attack_type != "Physical" && 
           self.attack_type != "Emotional" &&
           self.attack_type != "Verbal" &&
           self.attack_type != "Spiritual" &&
           self.attack_type != "Financial"
        self.errors.add(:attack_type, "must be equal to: Physical, Emotional, Verbal, Spiritual, or Financial")
        end
    end

    def correct_target
        if self.target != "Self" && 
           self.target != "Opponent"
        self.errors.add(:target, "must be equal to: Self or Opponent")
        end
    end
    
end
