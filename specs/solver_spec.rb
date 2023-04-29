require_relative 'solver'

RSpec.describe Solver do
  describe 'checking factorial solutions' do
    it 'should return 1 when 0 is given' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'should return 1 when 1 is passed' do
      solver = Solver.new
      expect(solver.factorial(1)).to eq(1)
    end

    it 'should return the correct value when given a positive integer' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an error when a negative number is passed in' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(NegativeError, 'You passed in a negative number')
    end
  end

  describe 'reversing a string' do
    it 'should return olleh when hello is passed' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end

    it 'should return yenom when money is passed' do
      solver = Solver.new
      expect(solver.reverse('money')).to eq('yenom')
    end
  end

  describe 'fizzbuzz test' do
    it "should return 'fizz' if number is divisible by 3" do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end

    it "should return 'buzz' if number is divisible by 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end

    it "should return 'fizzbuzz' if number is divisible by 3 and 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it "should return '7' if number is not divisible by 3 or 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
