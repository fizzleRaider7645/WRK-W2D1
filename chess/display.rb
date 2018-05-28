require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"

class Display
attr_reader :board, :cursor

  def initialize(board)
    # @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    board.length.times do |i|
      board[i].length.times do |j|
        if board[[i, j]] == cursor
        print board[[i, j]]
      end
      print "\n"
    end
  end
end
