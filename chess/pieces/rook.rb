require_relative "piece.rb"

class Rook < Piece
  include Steppable
  # def initialize(color, board, pos)
  #   @board = board
  #   @pos = []
  #   @color = color
  # end
  def to_s
    "R"
  end

  private

  def move_dirs
    HORIZONTAL + VERTICAL
  end

end
