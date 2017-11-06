require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_b.rb')

class TestClassesPartB < MiniTest::Test
  def test_get_team_name
    players = ["Smith", "Jones", "Mitchell"]
    sports_team = SportsTeam.new("Rangers", players, "Graeme Murty")
    assert_equal("Rangers", sports_team.team_name)
  end

  def test_get_players
    players = ["Smith", "Jones", "Mitchell"]
    sports_team = SportsTeam.new("Rangers", players, "Graeme Murty")
    assert_equal(["Smith", "Jones", "Mitchell"], sports_team.players)
  end

  def test_get_coach
    players = ["Smith", "Jones", "Mitchell"]
    sports_team = SportsTeam.new("Rangers", players, "Graeme Murty")
    assert_equal("Graeme Murty", sports_team.coach)
  end

  def test_set_coach
    players = ["Smith", "Jones", "Mitchell"]
    sports_team = SportsTeam.new("Rangers", players, "Graeme Murty")
    sports_team.coach = "Alex McLeish"
    assert_equal("Alex McLeish", sports_team.coach)
  end
end
