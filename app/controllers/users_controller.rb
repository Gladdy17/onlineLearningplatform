class UsersController < ApplicationController 
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end
  #Ex:- add_index("admin_users", "username")
end