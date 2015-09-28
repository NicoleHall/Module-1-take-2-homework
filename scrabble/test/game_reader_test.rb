gem 'minitest'
require './lib/game_reader'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameReaderTest < Minitest::Test

  def test_it_has_a_class
    assert GameReader
  end

  def test_it_can_read_in_csv_from_file_io_class
    game_data = [{:player_id=>"1", :word=>" hello"}, {:player_id=>"2", :word=>" hi"}, {:player_id=>"1", :word=>" silence"}, {:player_id=>"2", :word=>" snacker"}, {:player_id=>"1", :word=>" fun"}]
    assert_equal game_data, GameReader.new.incoming_data
  end

  def test_it_can_create_player_for_player_id
    player = GameReader.new.create_players
    assert_equal Player.new("1"), player

  end

end
