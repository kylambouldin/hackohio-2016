class UsersController < ApplicationController
	
	# shows homepage
	def index
    @client = GooglePlaces::Client.new('AIzaSyD3_RcVWXbbS1P0kq_9fVVYgf5ShL7DC0w')
    @spots = @client.spots_by_query('bars in columbus Ohio')
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