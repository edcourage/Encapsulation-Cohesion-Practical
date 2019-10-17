
class Calculator
  attr_reader :answer
  def add(num1,num2)
    @answer = num1 + num2
  end

  def subtract(num1,num2)
    @answer = num1 - num2
  end

end
