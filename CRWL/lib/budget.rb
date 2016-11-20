class Budget

  def initialize()
    @budget = 0             # total budget
    @spent = Hash.new       # amount spent at each bar: (bar,amount)
  end

  def loadValues(json)
    parsed = JSON.parse(json)
    if (parsed["budget"])
      @budget = parsed["budget"]
    else
      @budget = 100
    end
    if (parsed["spent"])
      @spent = parsed["spent"]
    else
      @spent = Hash.new
    end
    puts @budget
    puts @spent
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

end
