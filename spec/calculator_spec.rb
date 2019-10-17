require 'calculator'

describe Calculator do

  it "does an instance of the Calculator class respond to the add method?" do
    expect(Calculator.new).to respond_to(:add)
  end

  it "does the add method accept two arguments?" do
    calculator = Calculator.new
    expect{calculator.add(1,2)}.to_not raise_error(ArgumentError)
  end

  it "does add method return the sum of both arguments?" do
    calculator = Calculator.new
    expect(calculator.add(1,2)).to eq 3
  end

  it "does an instance of the Calculator class respond to the subtract method?" do
    expect(Calculator.new).to respond_to(:subtract)
  end

  it "does the subtract method accept two arguments?" do
    calculator = Calculator.new
    expect{calculator.subtract(3,2)}.to_not raise_error(ArgumentError)
  end

  it "does the subtract method subtract argument 2 from argument 1?" do
    calculator = Calculator.new
    expect(calculator.subtract(3,2)).to eq 1
  end

  it "does an instance of the Calculator class respond to @answer instance method" do
    expect(Calculator.new).to respond_to(:answer)
  end

  it "does the add method output to the @answer variable?" do
    calculator = Calculator.new
    expect(calculator.add(2,2)).to eq calculator.answer
  end

  it "does the subtract method output to the @answer variable?" do
    calculator = Calculator.new
    expect(calculator.subtract(3,2)).to eq calculator.answer
  end


end
