class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :player_id
      t.integer :enemy_id
      t.integer :location_id
      t.integer :attack_id
      t.integer :battle_id

      t.timestamps
    end
  end
end
