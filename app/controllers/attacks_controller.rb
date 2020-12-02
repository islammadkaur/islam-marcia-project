class AttacksController < ApplicationController
    def index
        @attacks = Attack.all
      end
    
      def show
        @attack = Attack.find(params[:id])
      end
    
      def new
        @attack = Attack.new
      end
  
      def create
        @attack = Attack.new(attack_params)
        if @attack.save
          redirect_to attack_path(@attack)
        else
          render :new
        end
      end
  
      def edit
        @attack = Attack.find(params[:id])
      end
    
      def update
          @attack = Attack.find(params[:id])
          if @attack.update(attack_params)
            redirect_to attack_path(@attack)
          else
            render :edit
          end
      end
    
    
      def destroy
        @attack = Attack.find(params[:id])
        if @attack.destroy
          redirect_to attacks_path
        end
  
      end
  
      private
  
        def attack_params
          params.require(:attack).permit(:name, :damage, :type)
        end
end
