require_relative "piece.rb"

class Pawn < Piece

  def to_s
    "P"
  end

  private

  def at_start_row?
  end
end
