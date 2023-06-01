require_relative '../solver'

describe 'Solver' do
  let(:solver) { Solver.new }

  describe 'Factorial' do
    it 'returns the factorial of a number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative numbers' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Factorial is not defined for negative numbers')
    end
  end

  describe 'Reverse' do
    it 'returns the reverse of a given string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'returns fizzbuzz if the number is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns fizz if the number is divisible by 3' do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns buzz if the number is divisible by 5' do
      expect(solver.fizzbuzz(25)).to eq('buzz')
    end

    it 'returns the number if it is not divisible by 3 nor by 5' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end

# require_relative '../solver'

# describe 'Solver' do
#   let(:solver) { Solver.new }

#   describe 'Factorial' do
#     it 'returns the factorial of a number' do
#       expect(solver.factorial(5)).to eq(120)
#     end
#   end

#   describe 'Reverse' do
#     it 'returns the reverse of given string' do
#       expect(solver.reverse('hello')).to eq('olleh')
#     end
#   end

#   describe 'fizzbuzz' do
#     it 'Returns fizzbuzz if number is divisble by both 5 and 3' do
#       expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
#     end
#     it 'Returns fizz if number is divisble by 3' do
#       expect(solver.fizzbuzz(9)).to eq('fizz')
#     end
#     it 'Returns buzz if number is divisble by 5' do
#       expect(solver.fizzbuzz(25)).to eq('buzz')
#     end
#   end
# end
