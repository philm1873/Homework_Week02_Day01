class SportsTeam
  attr_reader :team_name, :players
  attr_accessor :coach
  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end
end