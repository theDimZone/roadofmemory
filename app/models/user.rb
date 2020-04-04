class User < ApplicationRecord
  belongs_to :user
  has_many :user_veterans
  has_many :veterans, :through => :user_veterans
end
