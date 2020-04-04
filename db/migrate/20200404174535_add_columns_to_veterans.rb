class AddColumnsToVeterans < ActiveRecord::Migration[6.0]
  def change
        add_column :veterans, :moderated, :boolean
  end
end
