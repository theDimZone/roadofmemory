class User < ApplicationRecord
  has_ancestry

  #devise :omniauthable, omniaut_providers: [:odnoklassniki]

  has_many :user_veterans
  has_many :veterans, :through => :user_veterans
end
