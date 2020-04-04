class UserVeteran < ApplicationRecord
  belongs_to :user
  belongs_to :veteran
end
