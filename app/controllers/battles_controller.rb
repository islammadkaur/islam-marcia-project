class BattlesController < ApplicationController
  def index
    @battles = Battle.all
  end

  def show
    @battle = Battle.find(params[:id])
    if @battle.enemy.health <= 0
      @battle.update(state: "WON")
      redirect_to state_path(@battle)
    elsif @battle.player.health <= 0
      @battle.update(state: "LOST")
      redirect_to state_path(@battle)
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
    new_health > 0
    new_health1 = current_health1 - damage
    new_health1 
    @enemy.update(health: new_health)
    sleep 1
    # @player.update(health: new_health1)

    redirect_to battle_path(battle)
  end

  def prize
    @battle = Battle.find(params[:id])
    new_prize = "Ice Cream"
    @battle.update(prize: new_prize)
    redirect_to stats_path(@battle)
  end

  def state
    @battle = Battle.find(params[:id])
    @battle.enemy.update(health: 100)
    @battle.player.update(health: 100)
  end

  def stats
    @battle = Battle.find(params[:id])
 
  end
  def allstats
    @battles = Battle.all
 
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
