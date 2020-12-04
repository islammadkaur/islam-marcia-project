class RemoveAttackidFromBattle < ActiveRecord::Migration[6.0]
  def change
    remove_column :battles, :attack_id
  end
end
