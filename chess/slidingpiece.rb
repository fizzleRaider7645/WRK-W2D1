module Slideable
  DIAG = [[-1, -1], [1, 1], [-1, 1], [1, -1]]
  HORIZONTAL = [[0, 1], [0, -1]]
  VERTICAL = [[1, 0], [-1, 0]]
  def moves(pos)
    directions = self.move_dirs
    pos_moves = []

      directions.each do |direction|
        position = pos.dup
        # new_pos = self.pos
        while board.valid_moves?(position)

          position[0] += direction[0]
          position[1] += direction[1]
           pos_moves << position if board.valid_moves?(position)
        end
      end

      pos_moves
  end
end
