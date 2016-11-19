class UsersController < ApplicationController
	
	# shows homepage
	def index
    @client = GooglePlaces::Client.new('AIzaSyCTLRYRo2wwmM3umd6pbRXIVugXUnx0wwI')
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