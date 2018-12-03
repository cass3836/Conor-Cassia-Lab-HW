require("minitest/autorun")
require("minitest/rg")
require_relative("../class_2")

class TestSportsTeam < MiniTest::Test

  def setup
    @arr_players = ["Conor", "Cassia"]
    @sports_team = SportsTeam.new("Conor-Cassia", @arr_players, "Keith")

  end

  def test_team_name
    assert_equal("Conor-Cassia", @sports_team.team_name)
  end

  def test_players
    assert_equal(@arr_players, @sports_team.players)
  end

  def test_coach_name
    assert_equal("Keith", @sports_team.coach)
  end

  def test_set_coach_name
    @sports_team.coach = "Colin"
    assert_equal("Colin", @sports_team.coach)
  end

  def test_add_player_to_team
    @sports_team.add_player_to_team("James")
    assert_equal(3, @sports_team.players.length)
  end

  def test_check_player_string__true
    assert_equal(true, @sports_team.check_player_string("Conor"))
  end

  def test_player_string__false
    assert_equal(false, @sports_team.check_player_string("Jennifer"))
  end

  def test_points
    assert_equal(0, @sports_team.points)
  end


end
