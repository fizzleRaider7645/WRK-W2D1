require_relative "piece.rb"

class Bishop < Piece
  # def initialize(color, board, pos)
  #   @board = board
  #   @pos = []
  #   @color = color
  # end
  def to_s
    "B"
  end

  private

  def move_dirs
    DIAG
  end

end
