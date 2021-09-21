class SessionsController < ApplicationController
  def new
  end
  def create
    hotel = Hotel.find_by_email(params[:email])
    if hotel && hotel.authenticate(params[:password])
       session[:hotel_id] = hotel.id
       redirect_to root_url, notice: "Logged in!"
     else
       flash.now[:alert] = "Email or password is invalid"
       render "new"
     end
   end
   def destroy
     session[:hotel_id] = nil
     redirect_to root_url, notice: "Logged out!"
   end
  
end
