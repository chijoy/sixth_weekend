# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class Primenumber
  def is_prime?(number)
    if number < 2
      false
    elsif number == 2
      true
    else 
      (2..number/2).none? { |i| number % i == 0}
    end   
  end
end

RSpec.describe Primenumber do
  let(:primenumber) { Primenumber.new }

  describe '#is_prime?' do
    it 'should return false if given 0' do 
      expect(primenumber.is_prime?(0)).to eq(false)
    end 

    it 'should return false if given 1' do 
      expect(primenumber.is_prime?(1)).to eq(false)
    end 

    it 'should return true if given 2' do 
      expect(primenumber.is_prime?(2)).to eq(true)
    end 

    it 'should return true if given 3' do 
      expect(primenumber.is_prime?(3)).to eq(true)
    end 

    it 'should return false if given 4' do 
      expect(primenumber.is_prime?(4)).to eq(false)
    end 

    it 'should return true if given 5' do 
      expect(primenumber.is_prime?(5)).to eq(true)
    end 

    it 'should return false if given 9' do 
      expect(primenumber.is_prime?(6)).to eq(false)
    end

    it 'should return true if given 7' do 
      expect(primenumber.is_prime?(7)).to eq(true)
    end 

    it 'should return false if given 8' do 
      expect(primenumber.is_prime?(8)).to eq(false)
    end 

    it 'should return false if given 9' do 
      expect(primenumber.is_prime?(9)).to eq(false)
    end

    it 'should return false if given 10' do 
      expect(primenumber.is_prime?(10)).to eq(false)
    end

    it 'should return true if given 11' do 
      expect(primenumber.is_prime?(11)).to eq(true)
    end

     it 'should return false if given 12' do 
      expect(primenumber.is_prime?(12)).to eq(false)
    end

    it 'should return true if given 13' do 
      expect(primenumber.is_prime?(13)).to eq(true)
    end

    it 'should return false if given 96' do 
      expect(primenumber.is_prime?(96)).to eq(false)
    end

    it 'should return true if given 97' do 
      expect(primenumber.is_prime?(97)).to eq(true)
    end
  end 
end 

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

class Prime
  def highest_prime_number_under(number)
    index = 2
    largest_number = 0
    while (index <= number)
      if (number % index == 0)
        while (number % index == 0 )
          number = number / index
          largest_number = index
          index += 1
        end
      end
      index += 1
    end
    return largest_number
  end
end

RSpec.describe Prime do
  let(:prime) { Prime.new }

  describe '#highest_prime_number_under?' do
    it 'should return 2 if given 2' do 
      expect(prime.highest_prime_number_under(2)).to eq(2)
    end

    it 'should return 7 if given 10' do 
      expect(prime.highest_prime_number_under(10)).to eq(7)
    end

    it 'should return 29 if given 13195' do 
      expect(prime.highest_prime_number_under(13195)).to eq(29)
    end
  end 
end

# def lPrimeFactor(n)
#   index = 2
#   largest_number = 0
#   while (index <= n)
#     if (number % index == 0)
#       while (number % index == 0 )
#         number = number / index
#         largest_number = index
#         index += 1
#       end
#     end
#     index += 1
#   end
#   return largest
# end

