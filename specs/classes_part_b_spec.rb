require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_b.rb')

class TestClassesPartB < MiniTest::Test
  def setup
    players = ["Smith", "Jones", "Mitchell"]
    @sports_team = SportsTeam.new("Rangers", players, "Graeme Murty")
  end

  def test_get_team_name
    assert_equal("Rangers", @sports_team.team_name)
  end

  def test_get_players
    assert_equal(["Smith", "Jones", "Mitchell"], @sports_team.players)
  end

  def test_get_coach
    assert_equal("Graeme Murty", @sports_team.coach)
  end

  def test_set_coach
    @sports_team.coach = "Alex McLeish"
    assert_equal("Alex McLeish", @sports_team.coach)
  end

  def test_set_team_name
    @sports_team.team_name = "Hearts"
    assert_equal("Hearts", @sports_team.team_name)
  end

  def test_set_players
    @sports_team.players = ["McCoist", "Ferguson", "Laudrup"]
    assert_equal(["McCoist", "Ferguson", "Laudrup"], @sports_team.players)
  end

  def test_add_player
    @sports_team.add_player("Gascoigne")
    assert_equal(["Smith", "Jones", "Mitchell", "Gascoigne"], @sports_team.players)
  end

  def test_search_player
    result = @sports_team.search_player("Mitchell")
    assert_equal(true, result)
  end

  def test_add_points
    @sports_team.add_points("Win")
    assert_equal(3, @sports_team.points)
  end
end
