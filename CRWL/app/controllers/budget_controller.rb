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

end
