class GamesController < ApplicationController
    def play
        @player = Player.new     
    end

    def show
        @player = Player.find(params[:id])
    end


    
end
