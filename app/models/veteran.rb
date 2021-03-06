class Veteran < ApplicationRecord
  has_many :user_veterans
  has_many :troop_veterans
  has_many :users, :through => :user_veterans
  has_many :troops, :through => :troop_veterans

  #after_create :scores
  #def scores
  #
  #end

  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  :url  => ":s3_eu_url",
  :path => "/:class/photos/000/000/0:id/original/:basename.:extension"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
