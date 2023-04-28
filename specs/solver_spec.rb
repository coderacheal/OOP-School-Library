# require 'rspec'
require_relative 'solver'

RSpec.describe Solver do
  describe 'checking factorial solutions' do
    it 'return 1 when 0 is given' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'should return 1 when 1 is passed' do
      solver = Solver.new
      expect(solver.factorial(1)).to eq(1)
    end

    it 'returns the correct value when given a positive integer' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
    end
  end

  describe 'reversing a string' do
    it 'hello should return olleh' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end

    it 'money should return yenom' do
      solver = Solver.new
      expect(solver.reverse('money')).to eq('yenom')
    end
  end
end
