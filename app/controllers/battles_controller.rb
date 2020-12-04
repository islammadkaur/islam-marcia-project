class BattlesController < ApplicationController
    def index
        @battles = Battle.all
      end
    
      def show
        @battle = Battle.find(params[:id])
        @enemy = @battle.enemy
        current_health = @enemy.health
        @player = @battle.player
        current_health1 = @player.health
        if current_health == 0
          redirect_to state_path(@player)
          current_health == 100
        
        
        elsif current_health1 <= 0
          current_health1 == 100
          redirect_to battles_path
        end

      end
    
      def new
        @battle = Battle.new
      end
  
      def create
        @battle = Battle.new(battle_params)
        if @battle.save
          redirect_to battle_path(@battle)
        else
          render :new
        end
      end
  
      def edit
        @battle = Battle.find(params[:id])
      end
    
      def update
          @battle = Battle.find(params[:id])
          if @battle.update(battle_params)
            redirect_to battle_path(@battle)
          else
            render :edit
          end
      end


      def damage
        battle = Battle.find(params[:id])
        @enemy = battle.enemy
        current_health = @enemy.health
        @player = battle.player
        current_health1 = @player.health
        damage = battle.damage
        new_health = current_health - damage
        new_health >= 0
        new_health1 = current_health1 - damage
        new_health1 >= 0
        @enemy.update(health: new_health)
        sleep 3
        @player.update(health: new_health1)

        redirect_to battle_path(battle)
      end

      def state
        @battle = Battle.find(params[:id])
        

      end
    
    
      def destroy
        @battle = Battle.find(params[:id])
        if @battle.destroy
          redirect_to battles_path
        end
  
      end
  
      private
  
        def battle_params
          params.require(:battle).permit(:player_id, :enemy_id, :location_id)
        end
      #   t.string "state"
      #   t.string "prize"
      #   t.integer "player_id"
      #   t.integer "enemy_id"
      #   t.integer "location_id"
      #   t.integer "attack_id"
      #   t.datetime "created_at", precision: 6, null: false
      #   t.datetime "updated_at", precision: 6, null: false
      # end
end
