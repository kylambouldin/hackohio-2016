class Budget

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
    @spent.to_json
  end

  def getRemainingBudget()
    remainingBudget = @budget
    @spent.each do |bar, amount|
      if (!remainingBudget.nil?)
        remainingBudget -= amount
      end
    end
    remainingBudget
  end

  def createTestData()
    setBudget(100)
    setSpentAt("Out R Inn", 25)
    setSpentAt("barrzzz", 15)
    setSpentAt("drinks errywhere", 10)
    setSpentAt("the club", 5)
  end

end
