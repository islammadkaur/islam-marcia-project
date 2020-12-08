class Battle < ApplicationRecord
    belongs_to :player
    belongs_to :enemy
    belongs_to :location



def self.good_prizes
       good_prize_array = ["Ice Cream", "A Pizza Party", "Vodka", "A Pat On The Back", "Our Validation", "A Pile Of Garbage", "Our Approval", "A Half Eaten Sandwich"]
       good_prize_array.sample
end
def self.bad_prizes
       bad_prize_array = ["Your Dignity", "Our Respect", "Your Friends", "Your Burrito", "Your Glasses", "Everything"]
       bad_prize_array.sample
end

 



    def random
        # if damage = Attack.name

            

        # find_name = Attack.all.map do |attack|
        #     attack.name          
        attacksample.sample
    end

    def attacksample
        find_name = Attack.all.map do |attack|
            attack
        end
        find_name
    end


end