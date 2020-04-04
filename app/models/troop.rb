class Troop < ApplicationRecord
  has_ancestry
  has_many :troop_veterans
  has_many :veterans, :through => :troop_veterans

end
