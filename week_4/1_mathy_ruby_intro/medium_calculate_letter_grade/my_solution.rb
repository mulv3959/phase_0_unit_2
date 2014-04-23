# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Simon Gondeck

# 1. Pseudocode

# What is the input?
# The input is a student's different grades 
# What is the output? (i.e. What should the code return?)
# the output should return his overal grade in the class
# What are the steps needed to solve the problem?
#


# 2. Initial Solution
def total(array)
  sum = 0
  i = 0
  while array[i] 
  sum += array[i]
  i += 1
  end
  return sum
end

def get_grade(array)
  average = total(array) / array.length
  if average >= 90
    return "A"
  elsif average >=80
    return "B"
  elsif average >=70
    return "C"
  elsif average >= 60
    return "D"
  else 
    return "F"
  end
end
    



# 3. Refactored Solution

def total(array)
  sum = 0
  i = 0
  while array[i] 
  sum += array[i]
  i += 1
  end
  return sum
end

def get_grade(array)
  average = total(array) / array.length
  if average >= 90
    return "A"
  elsif average >=80
    return "B"
  elsif average >=70
    return "C"
  elsif average >= 60
    return "D"
  else 
    return "F"
  end
end

# 4. Reflection 
# I was not able to get a more simple solution than this although I know it is possible.
# To find this I simply took my method I created in the previous challenge that finds the sum within an array.
# and then used that to help me find the average. 
