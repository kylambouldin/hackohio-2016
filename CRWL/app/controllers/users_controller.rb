require 'budget.rb'

class UsersController < ApplicationController

	# shows homepage
	def index
		@budget = Budget.new()
	end

	# shows individual user profilera
  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
  end
end
