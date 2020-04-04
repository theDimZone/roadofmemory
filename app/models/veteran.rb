class Veteran < ApplicationRecord
  has_many :user_veterans
  has_many :troop_veterans
  has_many :users, :through => :user_veterans
  has_many :troops, :through => :troop_veterans
end
