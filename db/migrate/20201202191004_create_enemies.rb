class CreateEnemies < ActiveRecord::Migration[6.0]
  def change
    create_table :enemies do |t|

      t.timestamps
    end
  end
end
