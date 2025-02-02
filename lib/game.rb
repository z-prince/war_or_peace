require './lib/turn.rb'


class Game

    def initialize(player1, player2)
        @round = 1
        @player1 = player1
        @player2 = player2
    end

    def start
        until @player1.has_lost? || @player2.has_lost? || @round == 1_000_000
            turn = Turn.new(@player1, @player2)
            winner = turn.winner
            type = turn.type
            turn.pile_cards
            turn.award_spoils(winner)

            if type == :basic
                puts "#{winner.name} won 2 cards!"
            elsif type == :mutually_assured_destruction
                puts "*mutually assured destruction* 6 cards removed from play"
            elsif type == :war
                puts "WAR - #{winner.name} won 6 cards"
            end

            @round += 1

            if turn.player1.has_lost?
                puts "*~*~*~* #{turn.player2.name} has won the game! *~*~*~*"
            elsif turn.player2.has_lost?
                puts "*~*~*~* #{turn.player1.name} has won the game! *~*~*~*"
            elsif @round == 1_000_000
                puts "--- DRAW ---"
            end
        end
    end 

    
end