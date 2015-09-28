require_relative 'scrabble'

class WordList

  attr_reader :head

  def initialize(word)
    @head = Word.new(word)
  end

  def tail
    current_word = @head
    while current_word.next_word
      current_word = current_word.next_word
    end
    current_word
  end

  def add(word)
    
    if all.include?(word)
      return false
    else
      tail.next_word = Word.new(word)
    end
  end

  def all
    all = []
    current_word = @head
    while current_word.next_word
      all << current_word.word
      current_word = current_word.next_word
    end
    all << tail.word
  end

  def score(word)
    if word.class == Array
      score = word.map do |word|
        s = Scrabble.new
        s.score(word)
      end
      score = score.reduce(:+)
    else
      s = Scrabble.new
      score = s.score(word)
    end
    score
  end

  def count
    counter = 1
    current_word = @head
    while current_word.next_word
      counter += 1
      current_word = current_word.next_word
    end
    counter
  end

  def words_by_score
    s = Scrabble.new
    unsorted_array = all.map do |word|
      [word, s.score(word)]
    end
    sorted = unsorted_array.sort_by do |element|
      element[1]
    end
    sorted.reverse
  end

end

class Word

  attr_reader :word
  attr_accessor :next_word

  def initialize(word)
    @word = word
    @next_word = nil
  end

end
