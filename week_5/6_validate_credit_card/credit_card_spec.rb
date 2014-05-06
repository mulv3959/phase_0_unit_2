require_relative 'my_solution'


class CreditCard

  def initialize(number)
    @number = number
    @card_number = @number.to_s.split(//).reverse
    unless @card_number.size == 16
      raise ArgumentError.new("A credit card must have 16 digits")
    end
  end

  def check_card
    num = @card_number.collect.with_index{|digit,i| 
      if (i+1) % 2 == 0
        digit.to_i + digit.to_i
      else digit
      end}.join.split(//)
    sum = num.map(&:to_i).reduce(:+)
    if sum % 10 == 0
      return true
    else
      return false
    end
      print sum
  end

end


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