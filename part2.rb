class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    game.map do |player|  
        player[1].upcase!
        raise NoSuchStrategyError   unless player[1] =~ /\A[PRS]\z/
    end

    beats={}
    # left beats right
    beats["P"]="R"
    beats["R"]="S"
    beats["S"]="P"

    if game[0][1] == game[1][1] # the same move
            return game[0]
        elsif beats[game[0][1]] == game[1][1]
                return game[0]
           else
                return game[1] 
    end             
end

def rps_tournament_winner(tournament)
    if tournament[0].class != Array
        return tournament
    else  
        return rps_game_winner [rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])]
    end    


end
