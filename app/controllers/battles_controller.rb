class BattlesController < ApplicationController
  # before_action :refresh
  def index
    @battles = Battle.all
  end
  def show
    @battle = Battle.find(params[:id])
    battle_start
    p_attacks
    e_attacks
    atkmethod1
    atkmethod2
    atkmethod3
    atkmethod4
    if @battle.enemy.health <= 0
      @battle.update(state: "WON")
      @battle.update(prize: Battle.good_prizes)
      redirect_to state_path(@battle)
    elsif @battle.player.health <= 0
      @battle.update(state: "LOST")
      @battle.update(prize: Battle.bad_prizes)
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

  def atkmethod1
    @battle = Battle.find(params[:id])
    p_attacks
    e_attacks
    @player_attack1 = @p_attack_slots[0]
    @enemy_attack1 = @e_attack_slots.sample
    battle_start
    p_damage = @player_attack1.damage.to_i
    e_damage = @enemy_attack1.damage.to_i
    if @player_attack1.target == "Self" && @player_attack1.attack_type == @battle.location.location_type
      @player_health -= p_damage + 20
    elsif @player_attack1.target == "Opponent" && @player_attack1.attack_type == @battle.location.location_type
      @enemy_health -= p_damage + 20
    elsif @player_attack1.target == "Self" && @player_attack1.attack_type != @battle.location.location_type
      @player_health -= p_damage
    elsif @player_attack1.target == "Opponent" && @player_attack1.attack_type != @battle.location.location_type
      @enemy_health -= p_damage
    end
    if @enemy_attack1.target == "Self" && @enemy_attack1.attack_type == @battle.location.location_type
      @enemy_health -= e_damage + 20
    elsif @enemy_attack1.target == "Opponent" && @enemy_attack1.attack_type == @battle.location.location_type
      @player_health -= e_damage + 20
    elsif @enemy_attack1.target == "Self" && @enemy_attack1.attack_type != @battle.location.location_type
      @enemy_health -= e_damage
    elsif @enemy_attack1.target == "Opponent" && @enemy_attack1.attack_type != @battle.location.location_type
      @player_health -= e_damage
    end
  end
  
  def atkmethod2
    @battle = Battle.find(params[:id])
    p_attacks
    e_attacks
    @player_attack2 = @p_attack_slots[1]
    @enemy_attack2 = @e_attack_slots.sample
    battle_start
    p_damage = @player_attack2.damage.to_i
    e_damage = @enemy_attack2.damage.to_i
    if @player_attack2.target == "Self" && @player_attack2.attack_type == @battle.location.location_type
      @player_health -= p_damage + 20
    elsif @player_attack2.target == "Opponent" && @player_attack2.attack_type == @battle.location.location_type
      @enemy_health -= p_damage + 20
    elsif @player_attack2.target == "Self" && @player_attack2.attack_type != @battle.location.location_type
      @player_health -= p_damage
    elsif @player_attack2.target == "Opponent" && @player_attack2.attack_type != @battle.location.location_type
      @enemy_health -= p_damage
    end
    if @enemy_attack2.target == "Self" && @enemy_attack2.attack_type == @battle.location.location_type
      @enemy_health -= e_damage + 20
    elsif @enemy_attack2.target == "Opponent" && @enemy_attack2.attack_type == @battle.location.location_type
      @player_health -= e_damage + 20
    elsif @enemy_attack2.target == "Self" && @enemy_attack2.attack_type != @battle.location.location_type
      @enemy_health -= e_damage
    elsif @enemy_attack2.target == "Opponent" && @enemy_attack2.attack_type != @battle.location.location_type
      @player_health -= e_damage
    end
  end

  def atkmethod3
    @battle = Battle.find(params[:id])
    p_attacks
    e_attacks
    @player_attack3 = @p_attack_slots[2]
    @enemy_attack3 = @e_attack_slots.sample
    battle_start
    p_damage = @player_attack3.damage.to_i
    e_damage = @enemy_attack3.damage.to_i
    if @player_attack3.target == "Self" && @player_attack3.attack_type == @battle.location.location_type
      @player_health -= p_damage + 20
    elsif @player_attack3.target == "Opponent" && @player_attack3.attack_type == @battle.location.location_type
      @enemy_health -= p_damage + 20
    elsif @player_attack3.target == "Self" && @player_attack3.attack_type != @battle.location.location_type
      @player_health -= p_damage
    elsif @player_attack3.target == "Opponent" && @player_attack3.attack_type != @battle.location.location_type
      @enemy_health -= p_damage
    end
    if @enemy_attack3.target == "Self" && @enemy_attack3.attack_type == @battle.location.location_type
      @enemy_health -= e_damage + 20
    elsif @enemy_attack3.target == "Opponent" && @enemy_attack3.attack_type == @battle.location.location_type
      @player_health -= e_damage + 20
    elsif @enemy_attack3.target == "Self" && @enemy_attack3.attack_type != @battle.location.location_type
      @enemy_health -= e_damage
    elsif @enemy_attack3.target == "Opponent" && @enemy_attack3.attack_type != @battle.location.location_type
      @player_health -= e_damage
    end
  end
  
  def atkmethod4
    @battle = Battle.find(params[:id])
    p_attacks
    e_attacks
    @player_attack4 = @p_attack_slots[3]
    @enemy_attack4 = @e_attack_slots.sample
    battle_start
    p_damage = @player_attack4.damage.to_i
    e_damage = @enemy_attack4.damage.to_i
    if @player_attack4.target == "Self" && @player_attack4.attack_type == @battle.location.location_type
      @player_health -= p_damage + 20
    elsif @player_attack4.target == "Opponent" && @player_attack4.attack_type == @battle.location.location_type
      @enemy_health -= p_damage + 20
    elsif @player_attack4.target == "Self" && @player_attack4.attack_type != @battle.location.location_type
      @player_health -= p_damage
    elsif @player_attack4.target == "Opponent" && @player_attack4.attack_type != @battle.location.location_type
      @enemy_health -= p_damage
    end
    if @enemy_attack4.target == "Self" && @enemy_attack4.attack_type == @battle.location.location_type
      @enemy_health -= e_damage + 20
    elsif @enemy_attack4.target == "Opponent" && @enemy_attack4.attack_type == @battle.location.location_type
      @player_health -= e_damage + 20
    elsif @enemy_attack4.target == "Self" && @enemy_attack4.attack_type != @battle.location.location_type
      @enemy_health -= e_damage
    elsif @enemy_attack4.target == "Opponent" && @enemy_attack4.attack_type != @battle.location.location_type
      @player_health -= e_damage
    end
  end
  def atkbtn1
    atkmethod1
    @enemy.update(health: @enemy_health)
    @player.update(health: @player_health)
    sleep 1.5
    refresh
  end
  def atkbtn2
    atkmethod2
    @enemy.update(health: @enemy_health)
    @player.update(health: @player_health)
    sleep 1.5
    refresh
  end
  def atkbtn3
    atkmethod3
    @enemy.update(health: @enemy_health)
    @player.update(health: @player_health)
    sleep 1.5
    refresh
  end
  def atkbtn4
    atkmethod4
    @enemy.update(health: @enemy_health)
    @player.update(health: @player_health)
    sleep 1.5
    refresh
  end

  def refresh
    redirect_to battle_path(@battle)
  end

  def battle_start
    p_attacks
    e_attacks
    @battle = Battle.find(params[:id])
    @enemy = @battle.enemy
    @enemy_health = @enemy.health
    @player = @battle.player
    @player_health = @player.health
  end

  def prize
    @battle = Battle.find(params[:id])
    redirect_to stats_path(@battle)
  end
  
  def lost
    @battle = Battle.find(params[:id])
    redirect_to new_battle_path
  end

  def state
    @battle = Battle.find(params[:id])
    @battle.enemy.update(health: 100)
    @battle.enemy.save
    @battle.player.update(health: 100)
    @battle.player.save
  end

  def stats
    @battle = Battle.find(params[:id])
 
  end

  def allstats
    @battles = Battle.all
 
  end

  def p_attacks
    @battle = Battle.find(params[:id])
    @player = @battle.player
    @player_attacks = PlayerAttack.where(player_id: @player.id)
    @p_attack_slots = []
    Attack.all.select do |attack|
      @player_attacks.select do |player_attack|
          if attack.id === player_attack.attack_id
            @p_attack_slots << attack
          end
        end 
    end 
    @p_attack_slots
  end

  def e_attacks
    @battle = Battle.find(params[:id])
    @enemy = @battle.enemy
    @enemy_attacks = EnemyAttack.where(enemy_id: @enemy.id)
    @e_attack_slots = []
    Attack.all.select do |attack|
      @enemy_attacks.select do |enemy_attack|
          if attack.id === enemy_attack.attack_id
            @e_attack_slots << attack
          end
        end
    end
    @e_attack_slots
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
end