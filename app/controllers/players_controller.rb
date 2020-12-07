class PlayersController < ApplicationController

      def index
        @players = Player.all
      end
    

      def show
        @player = Player.find(params[:id])
        # @attack = @player.attack
        # current_attacks = @attack.name
        attacks
      end


      def new
        @player = Player.new
      end
  

      def create
        @player = Player.new(player_params.merge(health: 100))
          if @player.save
            4.times do |attack|
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
        @player = Player.find(params[:id])
        @player_attacks = PlayerAttack.where(player_id: @player.id)
        @attack_slots = []

        Attack.all.select do |attack|
          @player_attacks.select do |player_attack|
              if attack.id === player_attack.attack_id 
                @attack_slots << attack
                # @player.update(attack_id: @attack_slots)
              end
            end 
        end 
        @attack_slots
    end

    def playerattacks
      @player = Player.find(params[:id])
      player_attacks = @attack_slots
      allattacks = @player.attacks.player_attacks
      allattacks
    end


    def create_player
      @player = Player.new(name: "#{Player.generate_name}", health: 100)
      # self.name = Player.generate_name
      # self.health = 100
      @player.save

        4.times do |attack|
          random_attack = Attack.all.sample
          PlayerAttack.create(player_id: @player.id, attack_id: random_attack.id)
        end
      redirect_to player_path(@player)
    end

     
    

      private
  
        def player_params
          params.require(:player).permit(:name)
        end
end
