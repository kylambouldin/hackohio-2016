class BudgetController < ApplicationController

  def initialize()
    @budget = 0             # total budget
    @spent = Hash.new       # amount spent at each bar: (bar,amount)
  end

  def getBudget()
    @budget
  end

  def setBudget(amount)
    @budget = amount
  end

  def setSpentAt(bar, amount)
    @spent[bar] = amount
  end

  def getSpentAt(bar)
    @spent[bar]
  end

  def getBars()
    @spent.keys
  end

  def getRemainingBudget()
    remainingBudget = @budget
    @spent.each do |bar, amount|
      remainingBudget -= amount
    end
    remainingBudget
  end

end
