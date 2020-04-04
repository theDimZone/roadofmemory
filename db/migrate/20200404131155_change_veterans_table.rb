class ChangeVeteransTable < ActiveRecord::Migration[6.0]
  def change
    add_column :veterans, :lastname, :string
    add_column :veterans, :surname, :string
  end
end
