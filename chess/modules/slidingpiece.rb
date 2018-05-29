#module Slideable
require "byebug"
  DIAG = [[-1, -1], [1, 1], [-1, 1], [1, -1]]
  HORIZONTAL = [[0, 1], [0, -1]]
  VERTICAL = [[1, 0], [-1, 0]]
  def moves(pos)
    directions = DIAG + HORIZONTAL + VERTICAL#self.move_dirs
    pos_moves = []
# byebug
      directions.each do |direction|
        position = pos.dup
        # new_pos = self.pos
        while position.all? { |el| el.between?(0, 7) }#board.valid_moves?(position)
# byebug
          position[0] += direction[0]
          position[1] += direction[1]
           pos_moves << position.dup if position.all? { |el| el.between?(0, 7) }#if board.valid_moves?(position)
        end
      end

      pos_moves
  end
# end
