# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

<<<<<<< HEAD
def won?(board)
    WIN_COMBINATIONS.detect{ |winner|
    board[winner[0]] == board[winner[1]] && board[winner[1]] == board[winner[2]] && board[winner[0]] != " "
  }
=======
#def won?(board)
#    WIN_COMBINATIONS.detect{ |winner|
#    board[winner[0]] == board[winner[1]] && board[winner[1]] == board[winner[2]] && board[winner[0]] != " "
#  }
#end  

def won?(board)
    a = WIN_COMBINATIONS.map.with_index{|con, ind| con.map{|x| x if board[x]=="X" } == con || con.map{|x| x if board[x]=="O" } == con}
    return a.any?{|x| x if x == true}
>>>>>>> 95fd55089f54b881a0aedf095d920ef2320685e4
end
  
def full?(board)
  board.all?{|c|
    if c == "X" || c == "O"
      true
    else
      false
    end
  }
end

<<<<<<< HEAD

def draw?(board)
  if full?(board) == true && winner(board) == nil
    return true
  end
end

def over?(board)
  if  winner(board) == "X" || winner(board) == "O" || draw?(board) == true
    return true
  end
end

def winner(board)
    x = WIN_COMBINATIONS.map{|con| con.map{|x| x if board[x]=="X" } == con}.any?{|x| x if x == true}
    o = WIN_COMBINATIONS.map{|con| con.map{|x| x if board[x]=="O" } == con}.any?{|x| x if x == true}
    if x == true
        return "X"
    elsif o == true
        return "O"
    else
        return nil
    end                
end 
  
=======
def won?(board)
  WIN_COMBINATIONS.detect{ |winner|
    board[winner[0]] == board[winner[1]] && board[winner[1]] == board[winner[2]] && board[winner[0]] != " "
  }
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
end
>>>>>>> 95fd55089f54b881a0aedf095d920ef2320685e4
