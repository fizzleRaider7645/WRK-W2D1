require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"

class Display
attr_reader :board, :cursor

  def initialize(board)
     @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    system("clear")
    board.grid.length.times do |i|
      board.grid[i].length.times do |j|
        if [i, j] == cursor.cursor_pos
        print board[[i, j]].to_s.colorize(:red)
      else
        print board[[i, j]]
        end
      end
      print "\n"
    end
  end

  def move_cursor
    loop do
      render
      cursor.get_input
    end
  end
end
