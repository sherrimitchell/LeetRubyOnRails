class Flight < ActiveRecord::Base

  belongs_to :airport
  has_many :users

end
