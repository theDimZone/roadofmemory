class ChangeTypeNameInTroops < ActiveRecord::Migration[6.0]
  def change
    rename_column :troops, :type, :trooptype
  end
end
