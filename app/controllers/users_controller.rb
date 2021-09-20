class UsersController < ApplicationController
  def index
    @users = User.find(9)
  end
  def preview
    @users = User.find(9)
  end
end
