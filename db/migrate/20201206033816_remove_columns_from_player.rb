class RemoveColumnsFromPlayer < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :attack_id, :integer
  end
end
