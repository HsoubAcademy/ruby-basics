module TicTacToe
    class Board
        def initialize
            @cells = [nil] * 9
        end

        def place_occupied?(place)
            !@cells[place - 1].nil?
        end

        def full?
            @cells.none?(&:nil?)
        end

        def empty?
            @cells.all?(&:nil?)
        end

        def display
            vcells = @cells.map { |c| c.nil? ? ' ' : c }
            puts " #{vcells[0]} | #{vcells[1]} | #{vcells[2]}"
            puts "-----------"
            puts " #{vcells[3]} | #{vcells[4]} | #{vcells[5]}"
            puts "-----------"
            puts " #{vcells[6]} | #{vcells[7]} | #{vcells[8]}"
        end

        def display_numbers
            puts " 1 | 2 | 3"
            puts "-----------"
            puts " 4 | 5 | 6"
            puts "-----------"
            puts " 7 | 8 | 9"
        end

        def set(index, value)
            @cells[index - 1] = value
        end
    end
end

# board = TicTacToe::Board.new
# board.set(4, 'X')
# board.set(9, 'X')
# board.display
# board.display_numbers
