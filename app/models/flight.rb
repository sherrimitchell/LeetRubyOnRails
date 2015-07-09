class Flight < ActiveRecord::Base

  belongs_to :airport
  belongs_to :arrival
  belongs_to :departure
  has_many :users

end
