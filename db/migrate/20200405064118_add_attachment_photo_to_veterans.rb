class AddAttachmentPhotoToVeterans < ActiveRecord::Migration[6.0]
  def self.up
    change_table :veterans do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :veterans, :photo
  end
end
