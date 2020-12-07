class EnemiesController < ApplicationController

    def index
        @enemies = Enemy.all
    end
    

      def show
        @enemy = Enemy.find(params[:id])
        attacks
      end
    

      def new
        @enemy = Enemy.new
      end
  

      def create
        @enemy = Enemy.new(enemy_params.merge(health: 100))
        if @enemy.save
            4.times do |attack|
              random_attack = Attack.all.sample
              EnemyAttack.create(enemy_id: @enemy.id, attack_id: random_attack.id)
          end
          redirect_to enemy_path(@enemy)
        else
          render :new
        end
      end
  

      def edit
        @enemy = Enemy.find(params[:id])
        attacks
      end
    

      def update
          @enemy = Enemy.find(params[:id])
          if @enemy.update(enemy_params)
            redirect_to enemy_path(@enemy)
          else
            render :edit
          end
      end
    
    
      def destroy
        @enemy = Enemy.find(params[:id])
        if @enemy.destroy
          redirect_to enemies_path
        end
  
      end
  
      
      def attacks
        @enemy_attacks = EnemyAttack.where(enemy_id: @enemy.id)
        @attack_slots = []

        Attack.all.select do |attack|
          @enemy_attacks.select do |enemy_attack|
              if attack.id === enemy_attack.attack_id 
                @attack_slots << attack
              end
            end 
        end 
        @attack_slots
    end

    def create_enemy
      @enemy = Enemy.new(name: "#{Enemy.generate_name}", health: 100)
      # self.name = enemy.generate_name
      # self.health = 100
      @enemy.save

        4.times do |attack|
          random_attack = Attack.all.sample
          EnemyAttack.create(enemy_id: @enemy.id, attack_id: random_attack.id)
        end
      redirect_to enemy_path(@enemy)
    end



      private
  
        def enemy_params
          params.require(:enemy).permit(:name, :health)
        end
end
