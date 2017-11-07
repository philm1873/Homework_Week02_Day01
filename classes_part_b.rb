class SportsTeam
  attr_reader :points
  attr_accessor :coach, :team_name, :players
  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def search_player(player)
    @players.index(player) != nil
  end

  def add_points(result)
    points = {
      "Win" => 3,
      "Draw" => 1,
      "Loss" => 0
    }
    @points += points[result]
  end
end
