#!/usr/bin/ruby
cliass Board 
	
 def initialize 
		@board = Array.new(3) {Array.new(3, " ")}
	end
 def printInstructions
	puts "1 | 2 | 3"
		 "---------"
		 "4 | 5 | 6"
		 "---------"
		 "7 | 8 | 9"
	print "\n"
 end
 def printBoard
	 (0...3).each do |row|
		 print "        "
		 (0...3).each do |col| 
			 print @board[row][col]
			 print " | " unless col == 2
		end
		print "\n"
		print "        --------\n" unless row == 2
	 end
	 print "\n"
 end

 def isTie
	 @board.join.split(' ').include?(" ")
 end

 def findWinner
	 (0...3).each.do |i|
		 if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
			 return @board[i][0] unless @board[i][0] == " "
		 end
	 end
	 if ( @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] ) ||
		( @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] )
		 return @board[1][1] unless @board[1][1] == " "
	 end
	 return "C" unless "#{isTie}"

	 return false
 end

 def is_empty(row,col)
	 @board[row][col] === " "
 end

 def inside_board(row,col)
	 (0...3) === row and (0...3) === col
 end

 def valid_move(row,col)
	 is_empty(row,col) and inside_board(row,col)
 end

 def dropPiece(piece, row, col)
	 @board[row][col] = piece if valid_move(row,col) 
 end
end

def clear_screen
 puts "\n" * 100
end

def prompt_move(active_player)
	puts " #{active_player}'s turn. Chose a box!",
		 "        **~V~**"
	print "            "

	move = gets.chomp.to_i - 1
	row = move / 3
	col = move % 3
	return row,col
end

def alert_winner(winner,board)
	puts "   --**~^^^^^^^~**--"
	
	if winner == "C"
		puts " C A T S  G A M E"
	else
		puts " #{winner} ' S  W I N"
	end

	puts "   ----**~vVv~**----"
	puts "\n"
	board.printBoard
	puts "\n        **~V~**"
end

def ticTacToe(boardClass)
	board = boardClass.new
	active_player = "X"

	clear_screen
	board.printInstructions

	while not board.findWinner

		row,col = prompt_move(active_player)
		clear_screen

		if board.dropPiece(active_player, row, col)
			if active_player == "X"
				active_player = "O"
			else
				active_player = "X"
			end
		else
			puts "Invalid move, please select again\n\n"
		end

		board.printBoard
	end

	winner = board.findWinner
	clear_screen

	alert_winner(winner,board)
end

while true
	clear_screen
	puts "Do you want to play again? (y/n) "
	if ["no","n"].include? (gets.chomp.downcase)
		puts "Goodbye"
		break
	end
	ticTacToe(Board)
end

