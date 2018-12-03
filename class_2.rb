class SportsTeam

attr_accessor :team_name, :players, :coach

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
end
#
# def team_name
#   return @team_name
# end
#
# def players
#   return @players
# end
#
# def coach
#   return @coach
# end
#
# def set_coach_name(name)
#   @coach = name
# end

def add_player_to_team(new_player)
  @players << new_player
end

def check_player_string(check_player)
  for player in @players
    if player == check_player
      return true
    end
  end
  return false
end



end
