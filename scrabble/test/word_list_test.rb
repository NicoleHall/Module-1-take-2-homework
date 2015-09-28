gem 'minitest'
require './lib/word_list'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordListTest < Minitest::Test

  def test_wordlist_exists
    list = WordList.new("hello")
    assert list
  end

  def test_list_is_initalized_with_head_that_is_a_new_word
    list = WordList.new("hello")
    assert_equal "hello", list.head.word
  end

  def test_it_has_a_tail
    list = WordList.new("hello")
    assert_equal "hello", list.tail.word
  end

  def test_word_can_be_added_to_word_list
    list = WordList.new("hello")
    list.add("hi")
    assert_equal "hi", list.tail.word
  end

  def test_another_word_can_be_added_to_word_list
    list = WordList.new("hello")
    list.add("hi")
    list.add("whatup")
    assert_equal "whatup", list.tail.word
  end

  def test_all_method_will_return_all_words_in_list
    list = WordList.new("hello")
    list.add("hi")
    list.add("whatup")
    list.add("sayhey")
    assert_equal ["hello", "hi", "whatup", "sayhey"], list.all
  end

  def test_it_can_total_all_word_words_with_scrabble_score_method
    list = WordList.new("hello")
    list.add("hi")
    list.add("whatup")
    list.add("sayhey")
    assert_equal ["hello", "hi", "whatup", "sayhey"], list.all
    assert_equal 42, list.score(list.all)
  end

  def test_it_can_find_the_score_of_tail
    list = WordList.new("hello")
    list.add("hi")
    assert_equal "hi", list.tail.word
    assert_equal 5, list.score(list.tail.word)
  end

  def test_it_can_count_words_in_word_list
    list = WordList.new("hello")
    list.add("hi")
    list.add("whatup")
    list.add("sayhey")
    assert_equal 4, list.count
    list.add("young")
    assert_equal 5, list.count
  end

  def test_it_can_rank_the_words_by_score
    list = WordList.new("hello")
    list.add("xeno")
    list.add("a")
    list.add("at")
    expected = [
      ["xeno", 11],
      ["hello", 8],
      ["at", 2],
      ["a", 1]
    ]
    assert_equal expected, list.words_by_score
  end

  def test_a_word_can_only_be_played_once
    list = WordList.new("hello")
    list.add("xeno")
    assert_equal 2, list.count
    refute list.add("xeno")
    assert_equal 2, list.count
  end

end
