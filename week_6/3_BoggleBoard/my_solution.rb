# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
 
  def initialize(board)	
  	@board = board
  end

  def create_word(*coordinates)
  	coordinates.map {|x| @board[x.first][x.last]}.join("")
  end

  def get_row(row)
  	@board[row]
  end

  def get_col(col)
  	@board.transpose[col]
  end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

puts boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == 'dock'
puts boggle_board.create_word([3,2]) == 'k'
puts boggle_board.get_row(2) == ['e', 'c', 'l', 'r']
puts boggle_board.get_col(1) == ['r', 'o', 'c', 'a']


# 5. Reflection 
# For this challenge I mainly had to just take methods from last week and then
# use them here within a class. I found this pretty easy and would like to try the
# bonus but for now want to make sure that I can get done with all of the other 
# challenges first.




