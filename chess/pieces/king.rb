require_relative "piece.rb"

class King < Piece
  # def initialize(color, board, pos)
  #   @board = board
  #   @pos = []
  #   @color = color
  # end







  def to_s
    "K"
  end


protected
  def move_dirs
    HORIZONTAL + VERTICAL
  end

end
