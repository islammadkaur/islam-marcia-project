class CreatePlayerAttacks < ActiveRecord::Migration[6.0]
  def change
    create_table :player_attacks do |t|
      t.integer :player_id
      t.integer :attack_id
    end
  end
end
