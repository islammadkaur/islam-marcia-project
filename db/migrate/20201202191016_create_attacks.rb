class CreateAttacks < ActiveRecord::Migration[6.0]
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :damage
      t.string :attack_type

      t.timestamps
    end
  end
end
