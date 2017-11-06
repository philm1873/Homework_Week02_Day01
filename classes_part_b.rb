class SportsTeam
  attr_accessor :coach, :team_name, :players
  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  def add_player(player)
    @players.push(player)
  end

  def search_player(array, player)
    array.index(player) != nil
  end

end
