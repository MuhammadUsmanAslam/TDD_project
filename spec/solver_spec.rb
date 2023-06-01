require_relative '../solver.rb'

describe "Solver" do
  
    let(:solver) { Solver.new() }

    describe 'Factorial' do
      it 'returns the factorial of a number' do
        expect(solver.factorial(5)).to eq(120)
      end
    end
  
    describe 'Reverse' do
      it 'returns the reverse of given string' do
        expect(solver.reverse("hello")).to eq("olleh")
      end
    end
  
    describe 'fizzbuzz' do
      it 'Returns fizzbuzz if number is divisble by both 5 and 3' do
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
      it 'Returns fizz if number is divisble by 3' do
        expect(solver.fizzbuzz(9)).to eq('fizz')
      end
      it 'Returns buzz if number is divisble by 5' do
        expect(solver.fizzbuzz(25)).to eq('buzz')
      end
    end
  end