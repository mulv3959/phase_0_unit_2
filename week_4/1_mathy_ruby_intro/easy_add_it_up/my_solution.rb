# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Simon Gondeck

# 1. Pseudocode

# What is the input?
# The input is an array 
# What is the output? (i.e. What should the code return?)
# The code should return the total of all numbers in the array
# The other code should return a sentance with the words within the array.
# What are the steps needed to solve the problem?
# 1. We need to define and method called total that has an array as a parameter
#  Set variable 'sum' equal to 0. This variable will hold the total
#  Set variable 'i' equal to 0. This variable will be a counter
#  Create a while loop to iterate over the array. During the loop, add each
#     array element to 'sum', and then add 1 to 'i'
#  outside the loop, return sum and end the function
# -2) sentence_maker method
#  Define a method 'sentence_maker' that takes one argument, (array)
#  call ruby's built-in join method on the array with a blank space as 
#   the argument; call ruby's built-in capitalize method on the result


# 2. Initial Solution
def total(array)
    sum = 0
    i = 0
    while array [i]
      sum += array[i]
      i += 1
  end
  return sum
end

def sentence_maker(array)
  array.join( ) 
  array.capitalize
  return array
end


# 3. Refactored Solution
def total(array)
    sum = 0
    i = 0
    while array [i]
      sum += array[i]
      i += 1
  end
  return sum
end


def sentence_maker(array)
  return array.join(" ").capitalize + "."
end


# 4. Reflection 

#I learned a lot from this. I was very rusty with ruby and forgot how to do a lot of the basics.
#This activity reminded me of the basic methods like the .join and .capitalize methods
