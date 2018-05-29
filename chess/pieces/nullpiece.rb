require_relative "piece.rb"
require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
    nil
  end

  def to_s
    "_"
  end
end
