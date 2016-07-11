
require 'pry'

class Chess_game
  attr_accessor :start_lines, :start_columns, :n_l, :n_c
  def initialize (array, pieces, lines, columns)
    @chess_grid = array
    @pieces = pieces
    @start_lines = lines
    @start_columns = columns
  end

  def piece_position

      if @chess_grid[@start_lines][@start_columns] == nil
          puts "empty space"
      else
          puts "there is #{@pieces[@chess_grid[@start_lines][@start_columns].to_sym]}"
      end

      def check_moves (newline, newcolumns)
        @n_l = newline
        @n_c = newcolumns

          if @pieces[@chess_grid[@start_lines][@start_columns]] == "White Rook" || @pieces[@chess_grid[@start_lines][@start_columns]] == "Black Rook"
              Rook.possible_moves(@n_l, @n_c, @start_lines, @start_columns)
          end

          if @pieces[@chess_grid[@start_lines][@start_columns]] == "White King" || @pieces[@chess_grid[@start_lines][@start_columns]] == "Black King"
            King.possible_moves(@n_l, @n_c, @start_lines, @start_columns)
          end

          if @pieces[@chess_grid[@start_lines][@start_columns]] == "White Horse" || @pieces[@chess_grid[@start_lines][@start_columns]] == "Black Horse"
            Horse.possible_moves(@n_l, @n_c, @start_lines, @start_columns)
          end

          if @pieces[@chess_grid[@start_lines][@start_columns]] == "White Queen" || @pieces[@chess_grid[@start_lines][@start_columns]] == "Black Queen"
            Queen.possible_moves(@n_l, @n_c, @start_lines, @start_columns)
          end

          if @pieces[@chess_grid[@start_lines][@start_columns]] == "White Bishop" || @pieces[@chess_grid[@start_lines][@start_columns]] == "Black Bishop"
            Bishop.possible_moves(@n_l, @n_c, @start_lines, @start_columns)
          end

      end
  end
end

class Rook
  def self.possible_moves (newlines, newcolumns, start_lines, start_columns)
    @new_lines = newlines
    @new_columns = newcolumns
    @actual_columns = start_columns
    @actual_lines = start_lines

    if (@new_lines == @actual_lines) || (@new_lines == @actual_lines)
    puts "Legal"
    else
    puts "ILEGAL"
    end
  end
end

class King
  def self.possible_moves (newlines, newcolumns, start_lines, start_columns)
    @n_l = newlines
    @n_c = newcolumns
    @a_c = start_columns
    @a_l = start_lines

    if ((@n_l - @a_l).abs <= 1 && (@n_c - @a_c).abs <=1 )
    puts "Legal"
    else
    puts "ILEGAL"
    end
  end
end

class Horse
  def self.possible_moves (newlines, newcolumns, start_lines, start_columns)
    @n_l = newlines
    @n_c = newcolumns
    @a_c = start_columns
    @a_l = start_lines

    if (((@n_l - @a_l).abs > 0 && (@n_l - @a_l).abs <= 2) && ((@n_c - @a_c).abs > 0 && (@n_c - @a_c).abs <= 2 ))
    puts "Legal"
    else
    puts "ILEGAL"
    end
  end
end

class Queen
  def self.possible_moves (newlines, newcolumns, start_lines, start_columns)
    @n_l = newlines
    @n_c = newcolumns
    @a_c = start_columns
    @a_l = start_lines
    if (((@n_l - @a_l).abs == (@n_c - @a_c).abs) || @n_l == @a_l || @n_c == @a_c)
    puts "Legal"
    else
    puts "ILEGAL"
    end
  end
end

class Bishop
  def self.possible_moves (newlines, newcolumns, start_lines, start_columns)
    @n_l = newlines
    @n_c = newcolumns
    @a_c = start_columns
    @a_l = start_lines

    if (((@n_l - @a_l).abs == (@n_c - @a_c).abs))
    puts "Legal"
    else
    puts "ILEGAL"
    end
  end
end

# class Pawn
#   def self.possible_moves_white (newlines, newcolumns, start_lines, start_columns)
#     @n_l = newlines
#     @n_c = newcolumns
#     @a_c = start_columns
#     @a_l = start_lines
#
#     if @s_l == 1
#         if (@n_l == @a_l && (@n_c - @a_c).abs))
#         puts "Legal"
#         else
#         puts "ILEGAL"
#         end
#     end
#   end
# end


pieces_hash = {:wR => "White Rook",
               :bR => "Black Rook",
               :wK => "White King",
               :bK => "Black King",
               :wH => "White Horse",
               :bH => "Black Horse",
               :wQ => "White Queen",
               :bQ => "Black Queen",
               :wB => "White Bishop",
               :bB => "Black Bishop",
                }

chess_grid = [[:wR,:wH,:wB,:wK,:wQ,:wB,:wH,:wR],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [:wK,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,nil,nil,nil,nil],
              [:bR,nil,nil,nil,nil,nil,nil,nil],
              [nil,nil,nil,nil,:bQ,nil,nil,nil]
            ]
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],
              # [bR,"nil","nil","nil","nil","nil","nil","nil"],
              # ["nil","nil","nil","nil","nil","nil","nil","nil"],

#Rook.possible_moves(from, to, chess_grid)

puts "starting position x:"
starting_x = gets.chomp
puts "starting y:"
starting_y = gets.chomp
starting= Chess_game.new(chess_grid, pieces_hash, starting_y.to_i, starting_x.to_i)
# binding pry
#wR = Rook.new(0, 3, starting)

starting.piece_position

puts " where do you want to move next"
puts "next x:"
next_x= gets.chomp
next_y= gets.chomp

starting.check_moves(next_y.to_i, next_x.to_i)
#wR.possible_moves
