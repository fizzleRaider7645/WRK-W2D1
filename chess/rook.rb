class Rook < Piece
  include Steppable
  # def initialize(color, board, pos)
  #   @board = board
  #   @pos = []
  #   @color = color
  # end

  def move_dirs
    directions = [[1,0],[0,1],[-1,0],[0,-1]]
    until board.valid_moves?(pos)
      move_dirs
    end
  end

end
