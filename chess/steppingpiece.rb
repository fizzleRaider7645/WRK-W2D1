require "byebug"
 module Steppable
  def moves(pos)
    directions = self.move_dirs
    pos_moves = []

    directions.each do |direction|
      position = pos.dup
      position[0] += direction[0]
      position[1] += direction[1]
      pos_moves << position if board.valid_moves?(position) 
    end
    pos_moves
  end
end
