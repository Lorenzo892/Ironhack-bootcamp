
require 'pry'

class Chess_game
  attr_accessor :start_lines, :start_columns
  def initialize (array, pieces, lines, columns)
    @chess_grid = array
    @pieces = pieces
    @start_lines = lines
    @start_columns = columns
  end

  def piece_position
    puts "there is #{@pieces[@chess_grid[@start_lines][@start_columns].to_sym]}"
    if @chess_grid[@start_lines][@start_columns] == wR || @chess_grid[@start_lines][@start_columns] == bR
      wR.possible_moves
    end
  end
end

class Rook
  def initialize (newlines, newcolumns, starting)
    @new_lines = newlines
    @new_columns = newcolumns
    @actual_columns = starting.start_columns
    @actual_lines = starting.start_lines
  end

  def possible_moves
    if (@newlines == @actual_lines && @new_columns < 8 && @new_columns >= 0) || (@new_lines == @actual_lines && @new_lines < 8 && @new_lines >= 0)
    puts "Legal"
    else
    puts "ILEGAL"
    end
  end
end


pieces_hash = {:wR => "White Rook",
               :bR => "Black Rook",
                }

chess_grid = [[:wR,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [:bR,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil]
            ]
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # [bR,"nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],


starting= Chess_game.new(chess_grid, pieces_hash, 0, 0)
# binding pry
wR = Rook.new(0, 3, starting)

starting.piece_position
wR.possible_moves
