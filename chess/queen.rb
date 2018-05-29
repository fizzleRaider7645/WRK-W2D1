class Queen < Piece
  include Slideable

  def move_dirs

    DIAG + HORIZONTAL + VERTICAL
  end
end
