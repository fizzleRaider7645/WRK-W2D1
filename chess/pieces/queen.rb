require_relative "piece.rb"

class Queen < Piece
  include Slideable



  def to_s
    "Q"
  end


  private
  def move_dirs

    DIAG + HORIZONTAL + VERTICAL
  end
end
