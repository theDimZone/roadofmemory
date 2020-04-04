class CreateUserVeterans < ActiveRecord::Migration[5.2]
  def change
    create_table :user_veterans do |t|
      t.references :user, foreign_key: true
      t.references :veteran, foreign_key: true

      t.timestamps
    end
  end
end
