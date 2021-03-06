require_relative './board.rb'

module TicTacToe
    class Game
        WINING_COMBOS = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9],
            [1, 5, 9],
            [7, 5, 3],
            [1, 4, 7],
            [2, 5, 8],
            [3, 6, 9]
        ]

        def initialize
            @board = Board.new
            @choices = {
                'X' => [],
                'O' => []
            }
        end

        def play
            puts 'Welcome to TicTacToe'
            current_player = 'X'
            winner = nil
            until @board.full?
                round(current_player)
                winner = 'X' if check_choices(@choices['X'])
                winner = 'O' if check_choices(@choices['O'])
                break if winner
                current_player = current_player == 'X' ? 'O' : 'X'
            end
            display_result(winner)
        end

        protected

        def check_choices(choices)
            WINING_COMBOS.any? do |combo|
                (combo - choices).empty?
            end
        end

        def display_result(winner)
            if winner
                puts "Winner is #{winner}" 
            else
                puts "Game is drawn"
            end
        end

        def round(player)
            @board.display_numbers if @board.empty?
            puts "Player #{player}, choose a place"
            place = read_place
            do_move(player, place)
            @board.display
        end

        def read_place
            place = gets.chomp.to_i
            until place <= 9 and place >= 1 and !@board.place_occupied? place
                puts "Please choose a number between 1..9 for a place that it's not occupied."
                place = gets.chomp.to_i
            end
            place
        end

        def do_move(player, place)
            @choices[player].push place
            @board.set(place, player)
        end
    end
end

TicTacToe::Game.new.play
