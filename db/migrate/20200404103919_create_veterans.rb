class CreateVeterans < ActiveRecord::Migration[5.2]
  def change
    create_table :veterans do |t|
      t.string :name
      t.string :photo_url

      t.timestamps
    end
  end
end
