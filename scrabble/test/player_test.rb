gem 'minitest'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test

  def test_take_turn
    dave = Player.new
    word = "aa"
    word2 = "sass"

    dave.take_turn(word)
    assert_includes dave.words, word

    dave.take_turn(word2)
    assert_includes dave.words, word2
  end

  def test_total_for_one_word
    dave = Player.new
    word = "apple"

    dave.take_turn(word)
    assert_equal 9, dave.total
  end

  def test_players_totals_are_added_when_two_words_played
    cole_hall = Player.new
    word = "poptart"
    cole_hall.take_turn(word)
    assert_equal ["poptart"], cole_hall.words

    word2 = "popfart"
    cole_hall.take_turn(word2)
    assert_equal ["poptart", "popfart"], cole_hall.words
    assert_equal cole_hall.total, 25
  end

  def test_it_can_score_more_and_handle_space
    cole_hall = Player.new
    word1 = "hello"
    word2 = "hi "
    word3 = "whatup"
    word4 = "sayhey"
    cole_hall.take_turn(word1)
    cole_hall.take_turn(word2)
    cole_hall.take_turn(word3)
    cole_hall.take_turn(word4)
    assert_equal 42, cole_hall.total
  end

end
