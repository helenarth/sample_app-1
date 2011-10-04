class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #User.find(1)
  end
  
  def new
    @title = "Sign up"
  end

end
