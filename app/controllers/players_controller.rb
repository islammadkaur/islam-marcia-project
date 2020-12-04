class PlayersController < ApplicationController

      def index
        @players = Player.all
      end
    

      def show
        @player = Player.find(params[:id])
        attacks
      end


      def new
        @player = Player.new
      end
  

      def create
        @player = Player.new(player_params.merge(health: 100))
          if @player.save
            3.times do |attack|
              random_attack = Attack.all.sample
              PlayerAttack.create(player_id: @player.id, attack_id: random_attack.id)
          end
          redirect_to player_path(@player)
        else
          render :new
        end
      end
  

      def edit
        @player = Player.find(params[:id])
        attacks
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


      def attacks
        @player_attacks = PlayerAttack.where(player_id: @player.id)
        @attack_slots = []

        Attack.all.select do |attack|
          @player_attacks.select do |player_attack|
              if attack.id === player_attack.attack_id 
                @attack_slots << attack
              end
            end 
        end 
        @attack_slots
    end
     
    

      private
  
        def player_params
          params.require(:player).permit(:name)
        end
end
