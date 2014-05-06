# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: credit card number
# Output: true if valid number, false if not
# Steps:
# Initialize
# put input into array with each digit at a seperate index (.split(//))
# if number is not 16 digits (array.length =! 16) raise error message
# reverse array
# select digits at every other index ( index % 2 == 0) double these numbers
# split up double digits into single
# find the sum of all index(s)
# sum % 10 must == 0


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
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





# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
