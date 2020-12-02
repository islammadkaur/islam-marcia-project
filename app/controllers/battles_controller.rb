class BattlesController < ApplicationController
    def index
        @battles = Battle.all
      end
    
      def show
        @battle = Battle.find(params[:id])
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
    
    
      def destroy
        @battle = Battle.find(params[:id])
        if @battle.destroy
          redirect_to battles_path
        end
  
      end
  
      private
  
        def battle_params
          params.require(:battle).permit(:state, :prize, :location_id, :player_id, :enemy_id)
        end
end
