class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.string :state
      t.string :prize
      t.integer :player_id
      t.integer :enemy_id
      t.integer :location_id
      t.integer :stats_id

      t.timestamps
    end
  end
end
