require 'budget.rb'

class UsersController < ApplicationController

	# shows homepage
	def index
		@budget = Budget.new()
		@budgetValue = params[:budgetValue]
		@bar = params[:bar]
		@spent = params[:spent]

		if (@budgetValue.nil?)
			@budgetValue = 100;
		end
		@budget.setBudget(@budgetValue.to_i);
		if (!@bar.nil? && !@spent.nil?)
			@budget.setSpentAt(@bar, @spent.to_i)
		end
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
