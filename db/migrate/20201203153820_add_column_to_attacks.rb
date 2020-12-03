class AddColumnToAttacks < ActiveRecord::Migration[6.0]
  def change
    add_column :attacks, :target, :string
  end
end
