# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# input a integer
# What is the output? (i.e. What should the code return?)
# returns a string with a comma separating every three characters
# What are the steps needed to solve the problem?
# Well first I believe we need to turn it into a string.
# After it is in a string I have to find a pattern that allows me to tell the computer 
# to insert a comma in the correct spot (maybe using the split method?)
<<<<<<< HEAD
# first idea.... use to_s...then .split(//) which splits each letter or number in this case into a separate element in an array..
#...then idk if this is possible but if the index # % 3 = 1 insert (,) ...just kidding more i think about it is not possible this way
# im close though...

#ok here we go I think I have figured out a way to do it
#1. turn the integer into a string
#2. reverse the string 
#3. split the string into each number being a seperate string 
#and put this into an array
#4. slice the the array into smaller array with size 3 (each_slice(3))
#5. push a comma to the end of arrays
#6. join back into one array
#7. join back into one string
#8. reverse the string and return it

=======
>>>>>>> FETCH_HEAD


# 2. Initial Solution

def separate_comma(integer)
   string = []
   integer = integer.to_s.reverse.split(//).to_a.each_slice(3){|a| string << a}
   .to_a.each_slice(3){|a| string << a}
   string.map{|i| 
      if i.length == 3
            i.push(',')
      end}
   solution = string.join.reverse
      if solution.start_with?(',')
        solution[0] = ''
      end
   puts solution.inspect
end


# 3. Refactored Solution



# 4. Reflection 
<<<<<<< HEAD
# this took me a long time but I definately learned a lot. 
# I was struggling to see how these challenges related to my math skills
# but I am starting to see the connection now. It is really about breaking 
# the code into small problems and then at least for me now kind of guessing
# and checking different methods until one accomplishes what i am looking for
# Kinda like when you are trying to figure out how someone solves a tough
# math problem. You really have to break it down step by step and understand how 
# each works.
# I really focused on breaking down the problem into small parts.
# I was somewhat struggling before because I believe I was thinking about it wrong
# now that I see more clearly how in each of these challenges we 
# do not need advanced coding knowledge but instead we just have to think
# logically about what would solve the problem step by step.
# I was continually reminded about Pseudocode but never really understand the
# advantage until now. Although I did not go exactly off my Pseudocode
# it was a huge help because it allowed me to tackle small challenges
# step by step. Before I was too focused on the end result we were looking for instead of the process
# of how to get there.
=======
>>>>>>> FETCH_HEAD
