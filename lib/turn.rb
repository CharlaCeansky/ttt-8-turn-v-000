def display_board(board)
  board = " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
  puts board
end

def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board,index)
  if board[index] == " "|| board[index] == "" || board[index] == nil
    return false
  else
    return true
end
end

def move(board, index, character="X")
  board[index]=character
end

def valid_move?(board, index)
    index.between?(0,8)&& !position_taken?(board,index)
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
end
end
