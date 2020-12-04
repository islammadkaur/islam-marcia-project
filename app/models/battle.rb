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

    def damage
        find_damage = Attack.all.map do |attack|
            attack.damage
        end
        # find_name = Attack.all.map do |attack|
        #     attack.name
        # end
       
        find_damage.sample.to_i
    end

 

    def winner
        find_state = Battle.all.map do |battle|
            battle.state
        end
        find_enemy = Enemy.all.map do |enemy|
            enemy.health
        end
        if find_enemy = 0
          find_state = "WON"
        else
          find_state = "LOST"
        end
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
    # def attackid
    #     find_id = Attack.all.map do |battle|
    #         battle.id
    #     end
    #     id_to_string = find_id.join(', ')
    # end


    # def attacker
    #     attacksample.map do |attack|
    #         attack.name
    #     end
    # end

    # def attackname

    #     name = attacksample.name
    # end

    # def attackdamage
    #     attacksample.damage
    # end

    # # def arg(damage, attackname)
    # #     arg(damage, attackname).sample
    # end

end


