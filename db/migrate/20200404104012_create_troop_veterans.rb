class CreateTroopVeterans < ActiveRecord::Migration[5.2]
  def change
    create_table :troop_veterans do |t|
      t.references :troop, foreign_key: true
      t.references :veteran, foreign_key: true

      t.timestamps
    end
  end
end
