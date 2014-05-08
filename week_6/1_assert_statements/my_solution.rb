# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement



# 2. Pseudocode what happens when the code above runs

# There is an error message associated with the second assert message
# this is because name != 'billybob'

# 3. Copy your selected challenge here
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




# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

card = CreditCard.new(4408041234567893)
other_card = CreditCard.new(4408041234567892)


assert {card.check_card == true}
assert {other_card.check_card == true}
assert {other_card.check_card == false}


# 5. Reflection
