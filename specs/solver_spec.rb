require 'rspec'
require './modules/sover'

describe "checking factorial solutions" do
    
    it 'return 1 when 0 is given' do 
        expect(factorial).to eq(1) 
    end 

    it 'should return 1 when 1 is passed' do
        expect(factorial).to  eq(1)
    end

    it "returns the correct value when given a positive integer" do
        expect(factorial(5)).to eq(120)
    end
end
