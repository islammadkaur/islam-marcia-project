class PlayersController < ApplicationController
    def index
        @players = Player.all
      end
    
      def show
        @player = Player.find(params[:id])
        # @attack = @player.attack
        # current_attacks = @attack.name

      end
    
      def new
        @player = Player.new
        @attack_slots = @player.attacks << Attack.all.sample(3)
      end
  
      def create
        @player = Player.new(player_params.merge(health: 100))
        if @player.save
          redirect_to player_path(@player)
        else
          render :new
        end
      end

      # def attackassign
      #   @player = Player.find(params[:id])
      #   @attack = @player.attacks
      #   current_attacks = @attack.id
      #   attacks = current_attacks.sample(3)
      #   @player.update(attack_id: attacks)
      #   redirect_to player_path(@player)
      # end
  
      def edit
        @player = Player.find(params[:id])
        @attack_slots = @player.attacks
      end
    
      def update
          @player = Player.find(params[:id])
          if @player.update(player_params)
            redirect_to player_path(@player)
          else
            render :edit
          end
      end
    
    
      def destroy
        @player = Player.find(params[:id])
        if @player.destroy
          redirect_to players_path
        end
  
      end

     
      private
  
        def player_params
          params.require(:player).permit(:name)
        end
end
