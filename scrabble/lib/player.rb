require_relative 'scrabble'

class Player
  attr_reader :words, :number

  def initialize(number=nil)
    @number = number
    @words = []
  end

  def take_turn(word)
    words << word
  end

  def total
    total = words.map do |word|
      Scrabble.new.score(word)
    end
    total.reduce(:+)
  end


end
