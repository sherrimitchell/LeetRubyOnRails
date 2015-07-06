class UserFlight < ActiveRecord::Base

  has_many :flights,  through: :users
  has_many :users, through: :flights

end
