require 'display'


describe Display do
    it 'does an instance of Display respond to print_answer' do
      expect(Display.new).to respond_to(:print_answer)
    end


    it 'does print_answer accept an argument?' do
      expect{subject.print_answer(1)}.to_not raise_error(ArgumentError)
    end

    it 'does print_answer accept instance of Calculator class as argument?' do
    calculator = Calculator.new
    expect{subject.print_answer(calculator)}.to_not raise_error
    end

    it 'does print_answer respond to the Calculator instance variable @answer as an argument?' do
      calculator = Calculator.new
      expect{subject.print_answer(calculator.answer)}.to_not raise_error
    end

    it 'does print_answer return string?' do
      expect(subject.print_answer(1)).to be_kind_of(String)
    end

    it 'if the @answer varible belonging to the Calculator instance has the value of 4, does print_answer return the following string? "The Answer is: 4"' do
      calculator = Calculator.new
      calculator.add(2,2)
      expect(subject.print_answer(calculator.answer)).to eq "The Answer is: 4"
    end
end
