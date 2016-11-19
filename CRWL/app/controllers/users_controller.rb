class UsersController < ApplicationController
	
	# shows homepage
	def index
    @client = GooglePlaces::Client.new('AIzaSyC6f0pKju1gfOnOCtLXp_8s8JLb2cKC0l8')
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