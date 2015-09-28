gem 'minitest'
require './lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test

  def test_it_can_read_words_from_dict_words
    list = WordFinder.new
    assert_equal 'Zyzzogeton', list.words.last
  end



end
