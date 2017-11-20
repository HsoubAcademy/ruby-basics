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
            @cells.each_slice(3) do |row|
                puts row.map{|c| c.to_s.rjust(2, ' ') }.to_a.join(' |')
                puts "-----------"
            end
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