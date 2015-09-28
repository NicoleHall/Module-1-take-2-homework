gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 2, Scrabble.new.score("aa")
  end

  def test_empty_string_returns_zero
    assert_equal 0, Scrabble.new.score("")
  end

  def test_if_passed_nil_0_will_result
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_can_deal_with_a_blank_space
    assert_equal 4, Scrabble.new.score(" f")
  end

 test_random_word_from_word_finder_can_be_passed_to_score_method_in_the_Scrabble_class
    random_word = WordFinder.new.words.sample(1).join
    second_random_word = WordFinder.new.words.sample(1)
    refute_equal random_word, second_random_word
    assert_equal 15, Scrabble.new.score(random_word.to_s)
    # assert_equal "funny", random_word
    # assert_equal 15, Scrabble.new.score(random_word)
  end
end
