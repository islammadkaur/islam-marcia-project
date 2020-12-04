class Location < ApplicationRecord
    has_many :battles
    has_many :players, through: :battles
    has_many :enemies, through: :battles

    validate :correct_location_type
    validates :name, presence: true, uniqueness: true

    def correct_location_type
        if self.location_type != "Physical" && 
           self.location_type != "Emotional" &&
           self.location_type != "Verbal" &&
           self.location_type != "Spiritual" &&
           self.location_type != "Financial"
        self.errors.add(:location_type, "must be equal to: Physical, Emotional, Verbal, Spiritual, or Financial")
        end
    end
    

end
