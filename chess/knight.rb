class Knight < Piece
  include Steppable
  # def initialize(color, board, pos)
  #   @board = board
  #   @pos = []
  #   @color = color
  # end
  protected
    def move_dirs
      directions = [[1,-2], [2,-1], [1,2], [2,1], [-1,-2], [-2,-1],[-2,1], [-1,2]]
    end
end
