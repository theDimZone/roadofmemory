class AddTroopReferencesToTroops < ActiveRecord::Migration[6.0]
  def change
    add_reference :troops, :troop, foreign_key: true
  end
end
