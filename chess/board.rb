require_relative "pieces/piece.rb"
require_relative "pieces/nullpiece.rb"
require_relative "pieces/pawn.rb"

class BoardError < StandardError; end

class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @sentinel = NullPiece.instance
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

  def valid_pos?(pos)
    pos.all? { |el| el.between?(0, 7) }
  end

  def populate
    grid.length.times do |i|
      grid[i].length.times do |j|
        if [0, 7].include?(i)
          self[[i, j]] = Piece.new(:red, self).to_s
        elsif [1, 6].include?(i)
          self[[i, j]] = Pawn.new(:red, self).to_s
        else
          self[[i, j]] = NullPiece.instance
        end
      end
    end
  end
end
