require 'budget.rb'

class UsersController < ApplicationController

	# shows homepage
	def index
		@crawls = Crawl.limit(10)
		if current_user
			@budget = Budget.new()

			user = current_user
			user.budgetSave
			if (!user.budgetSave.nil?)
				@budget.loadValues(user.budgetSave)
			else
				@budgetValue = 100;
			end

			@budgetValue = params[:budgetValue]
			@bar = params[:bar]
			@spent = params[:spent]
			if (!@budgetValue.nil?)
				@budget.setBudget(@budgetValue.to_i);
			end
			if (!@bar.nil? && !@spent.nil?)
				@budget.setSpentAt(@bar, @spent.to_i)
			end

			user.budgetSave = @budget.to_json
			puts @budget.to_json
			user.save
		end
	end

	# shows individual user profilera
  def show
    @user = User.find(params[:id])
    @bars = Bar.limit(5)
		@crawls = Crawl.where(user_id: current_user.id)
  end

  def new
  end

  def edit
  end
end
