class AirportsController < ApplicationController
  before_action :authenticate_user

  def add_an_airport

  end

  def get_airport
    airport = Airport.find

  end

  def all

  end

end