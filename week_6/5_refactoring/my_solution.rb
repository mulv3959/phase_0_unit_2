# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself


# Original Solution

# main refactoring I have is to reduce the amount of variables I believe

class CreditCard

  def initialize(number)
    @number = number  # I do not think I need multiple variables here
    @card_number = @number.to_s.split(//).reverse # no need to reverse
    unless @card_number.size == 16
      raise ArgumentError.new("A credit card must have 16 digits")
    end
  end

  def check_card
    num = @card_number.collect.with_index{|digit,i| # no need for num variable
      if (i+1) % 2 == 0 
        digit.to_i + digit.to_i # change this to multiplication by 2 (double)
      else digit
      end}.join.split(//)
    sum = num.map(&:to_i).reduce(:+)
    if sum % 10 == 0 # can get rid of the if because method automatically returns 
    	# the last line of code anyway
      return true # do not think I need these 3 lines
    else
      return false
    end
      print sum # this was just to help me figure out the code at first
  end

end


# Refactored Solution
class CreditCard

  def initialize(number)
    @number = number.to_s.split(//)
    unless @number.size == 16
      raise ArgumentError.new("A credit card must have 16 digits")
    end
  end

  def check_card
    @number = @number.collect.with_index{|digit,i| 
      if i % 2 == 0     #really confused...code works with this line but also if I put (i+1) % 2 == 0??
        digit.to_i.*(2) 
      else 
      	digit
      end}
    sum = @number.join.split(//).map(&:to_i).reduce(:+)
    sum % 10 == 0
  end

end




# DRIVER TESTS GO BELOW THIS LINE


describe CreditCard do
  describe '#initialize' do
    it 'Expects a single argument for the card' do
      CreditCard.instance_method(:initialize).arity.should eq 1
    end
    
    it 'raises ArgumentError on card > 16' do
      expect {
        CreditCard.new(11111111111111112)
      }.to raise_error(ArgumentError)
    end
    
    it 'raises ArgumentError on card < 16' do
      expect {
        CreditCard.new(1)
      }.to raise_error(ArgumentError)
    end
  end
  
  describe '#check_card' do
    it 'expects no arguments to be passed' do
      CreditCard.instance_method(:check_card).arity.should be_zero
    end
    
    it 'returns true for a valid card' do
      card = CreditCard.new(4408041234567893)
      
      card.check_card.should eq true
    end
    
    it 'returns false for a bad card' do
      card = CreditCard.new(4408041234567892)
      
      card.check_card.should eq false
    end
  end
end


#please work

# Reflection

# I am pretty confused about line 29. Originally I had reversed the array
# so I needed to do (i+1) % 2 == 0 . However, I realized that if the card
# is valid it needs to have 16 digits so reversing the array does not do anything for me
# However, for some reason my code still works whether I do i % 2 == 0  or
# (i + 1) % 2 == 0. This makes no sense to me. 