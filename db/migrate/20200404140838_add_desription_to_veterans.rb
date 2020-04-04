class AddDesriptionToVeterans < ActiveRecord::Migration[6.0]
  def change
    add_column :veterans, :description, :text
  end
end
