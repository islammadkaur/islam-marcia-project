class RemoveColumnsFromBattles < ActiveRecord::Migration[6.0]
  def change
    remove_column :battles, :player_attacks_id, :integer
    remove_column :battles, :attack_id, :integer
  end
end
