# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = (input.to_i) - 1
  
end

board = [" "," "," "," "," "," "," "," "," "]
def move(board, index, char = "X" )
  board[index] = char
end





# validates if the space is open or taken by an existing "X" or "O"

def valid_move?(board, index)
  if (index <=0 && index >=8)
    return true
  elsif index == " " || index == "" || index == nil)
  
   return false
    end
end
 





#determines if the postion on the board is taken or not--

def position_taken?(board, index)

  
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    puts "Free Space"
    return false
  elsif (board[index] == "X" || board[index] == "O")
    puts "Space Taken. Choose another."
    return true
  end
  
end