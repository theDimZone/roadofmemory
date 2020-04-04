class AddAncestryToTroops < ActiveRecord::Migration[6.0]
  def change
    add_column :troops, :ancestry, :string
    add_index :troops, :ancestry
  end
end
