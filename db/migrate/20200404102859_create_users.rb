class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :socialtoken
      t.string :socialtype
      t.integer :score
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
