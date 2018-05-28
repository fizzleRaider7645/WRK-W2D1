require_relative "piece.rb"

class BoardError < StandardError; end

class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @sentinal = NullPiece.new
  end

  def move_piece(color, start_pos, end_pos)
    raise BoardError.new("No piece at start position") if grid[start_pos].class == NullPiece
    raise BoardError.new("Cannot move to end position") if grid[end_pos].class == Piece
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    grid[row][col] = piece
  end

  def populate
    grid.length.times do |i|
      grid[i].length.times do |j|
        if [0, 1, 6, 7].include?(i)
          self[[i, j]] = Piece.new
        else
          self[[i, j]] = @sentinal
        end
      end
    end
  end
end
