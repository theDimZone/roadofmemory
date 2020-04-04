class User < ApplicationRecord
  has_ancestry

  has_many :user_veterans
  has_many :veterans, :through => :user_veterans
end
