class CreateTroops < ActiveRecord::Migration[5.2]
  def change
    create_table :troops do |t|
      t.string :type
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
