# U2.W5: Die Class 1: Numeric


# I worked on this challenge with Simon Gondeck

# 2. Pseudocode

# Input: # of sides
# Output: random number
# Steps: did pseudocode with paper and pencil 


# 3. Initial Solution

class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Need more sides")
    end
    @sides = sides
  end
  def sides
    return @sides
  end
  
  def roll
    number = 1 + rand(@sides)
    return number
  end
end


# 4. Refactored Solution


class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Need more sides")
    end
    @sides = sides
  end
  def sides
    return @sides
  end
  
  def roll 
    return 1 + rand(@sides)
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 