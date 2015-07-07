class Flight < ActiveRecord::Base

  has_many :user_flights
  has_many :users, through: :user_flights

end
