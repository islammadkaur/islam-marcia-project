class Battle < ApplicationRecord
    belongs_to :player
    belongs_to :enemy
    belongs_to :location
    belongs_to :attack, optional: true





    # def damage
    #     find_damage = Attack.all.map do |attack|
    #         attack.damage
    #     end
    #     # find_name = Attack.all.map do |attack|
    #     #     attack.name          
    #     find_damage.sample.to_i
    # end

    # def damage
    #     find_damage = Attack.all.map do |attack|
    #         attack.damage
    #     end
    #     # find_name = Attack.all.map do |attack|
    #     #     attack.name
    #     # end
       
    #     find_damage.sample.to_i
    # end

    
    # def prize
def self.good_prize
       good_prize_array = ["Ice Cream", "Pizza Party", "Vodka", "Pat On The Back", "Validation", "Pile Of Garbage", "Our Approval", "Half Eaten Sandwich"]
       good_prize_array.sample
end
def self.bad_prize
       bad_prize_array = ["Your Dignity", "Our Respect", "Your Friends", "Your Burrito", "Everything"]
       bad_prize_array.sample
end

 

    def winner
        # find_state = []
        # enemy = Battle.all.map do |enemy|
        #     enemy.enemy
        # end
        # enemy_health = enemy.find do |enemy|
        #     enemy.health
        # end
        
        # health = enemy_health.health
        #     if health < 0
        #         find_state = "WON" 
        #     end
        #     if health > 0
        #         find_state = "LOST" 
        #     end
        
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