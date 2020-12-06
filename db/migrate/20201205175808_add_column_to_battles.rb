class AddColumnToBattles < ActiveRecord::Migration[6.0]
  def change
    add_column :battles, :player_attacks_id, :integer
    add_column :battles, :attack_id, :integer
  end
end
