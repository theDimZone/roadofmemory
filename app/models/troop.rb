class Troop < ApplicationRecord
  has_many :troop_veterans
  has_many :veterans, :through => :troop_veterans
end
