# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution

def create_word(board,*coords)
	coords.map { |coord| board[coord.first][coord.last] }.join("")
end

puts create_word(boggle_board, [2,1], [3,1], [3,0])
puts create_word(boggle_board, [0,1], [1,1],[2,1],[3,2])


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution

@boggle_board = boggle_board
def get_row(row)
	@boggle_board[row]
end



# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_row(2) # => e, c, l, r 

# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
@boggle_board = boggle_board
def get_col(col)
	@boggle_board.transpose[col]
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
 puts get_col(1)

# Reflection 