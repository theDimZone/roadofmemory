class AddPhotoToVeterans < ActiveRecord::Migration[6.0]
  def change
    def self.up
      add_attachment :veterans, :photo
    end

    def self.down
      remove_attachment :veterans, :photo
    end
  end
end
