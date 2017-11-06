require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_b.rb')

class TestClassesPartB < MiniTest::Test
  def test_get_team_name
    players = ["Smith", "Jones", "Mitchell"]
    sports_team = SportsTeam.new("Rangers", players, "Graeme Murty")
    assert_equal("Rangers", sports_team.team_name)
  end
end
