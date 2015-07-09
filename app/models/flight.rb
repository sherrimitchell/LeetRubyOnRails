class Flight < ActiveRecord::Base
  belongs_to :airport
  belongs_to :arrival
  belongs_to :departure
  has_many :users
  has_many :user_flights
  has_many :users, through: :user_flights
end
