class UsersController < ApplicationController
	
	# shows homepage
	def index
	end
	
	# shows individual user profile
  def show
    @user = User.find(params[:id])
  end

  def new
  end
  
  def edit
  end
end