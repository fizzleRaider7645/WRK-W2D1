require_relative "piece.rb"

class Knight < Piece
  include Steppable
  # def initialize(color, board, pos)
  #   @board = board
  #   @pos = []
  #   @color = color
  # end
  def to_s
    "KN"
  end
  protected
    def move_dirs
      [[1,-2], [2,-1], [1,2], [2,1], [-1,-2], [-2,-1],[-2,1], [-1,2]]
    end
end
