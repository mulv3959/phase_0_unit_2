# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# 1. Initialize the dispenser (dispenser should be an array)
# 2. create a pez_count method that shows the length of the dispenser array (.length)
# 3. create a get_pez method that takes out a pez from the beginnning
# of the dispenser array (.shift)
# 4. create a add_pez method that takes a pez or a flavor of a pez as its input
# and adds the pez to the end of the array (.push('x'))
# 5. create a see_all_pez method that shows the dispenser array (.inspect)


# 3. Initial Solution

class PezDispenser
 
	def initialize(dispenser)
		@dispenser = dispenser
	end

	def pez_count
		@dispenser.length
	end

	def get_pez
		@dispenser.shift
	end

	def add_pez(pez)
		@dispenser.push(pez)
	end

	def see_all_pez
		@dispenser.inspect
	end
 
end
 


# 4. Refactored Solution

# I do not believe I can refactor this.




# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection
# I kind of do not believe that I did this right, most of the challenges
# especially the solo challenges take me a while to figure out. It seems
# too good to be true. Hopefully I am just starting to better understand
# the concepts and that is why I was able to do it so quickly.
# Each of the methods were quite easy to figure out; they were pretty much all 
# basic methods that we have been using for quite a while. 




