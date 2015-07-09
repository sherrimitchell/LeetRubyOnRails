class FlightsController < ApplicationController
  before_action :authenticate_user

  def get_user_flight
    @flight_api = FlightStatus.new
    data = @flight_api.get_user_flight(params[:flight_code])
    # do database stuff?
    # hand back some json
  end

  def lookup_flight

  end

  def create_flight
    
  end

  def update_flight_info

  end

  def delete_user_flight
    
  end


end