class ApplicationController < ActionController::Base
    helper_method :current_hotel
  def current_hotel
    if session[:hotel_id]
      @current_hotel ||= Hotel.find(session[:hotel_id])
    else
    @current_hotel = nil
    end
  end
    
end


